class ApplicationController < ActionController::Base
  protect_from_forgery


  #catch dos registros inválidos... render o new ou o edit
  rescue_from ActiveRecord::RecordInvalid do |ex|
    flash[:error] = ex.record.errors.full_messages.to_sentence
    render :action => (ex.record.new_record? ? :new : :edit)
  end

end
