class Api::V1::Bulk::DeviceController < ApplicationController
  protect_from_forgery :except => :import

  def import
    Rails.logger.debug ">>> #{params}"

    @tempfile_path = params[:file].tempfile.path
    Rails.logger.debug "* #{@tempfile_path}"
    @orig_filename = params[:file].original_filename
    Rails.logger.debug "* #{@orig_filename}"

    respond_to do |format|
      format.csv {
        Rails.logger.debug "* Uploaded with CSV format."
        head :no_content 
      }
      format.json {
        Rails.logger.debug "* Uploaded with JSON format."
        head :no_content
      }
    end
  end
end
