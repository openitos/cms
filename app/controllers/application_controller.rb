class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale_from_url 
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to user_session_path, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path 
  end
  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end 
end
