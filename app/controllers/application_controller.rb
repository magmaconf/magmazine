class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale


  def set_locale
    I18n.locale = I18n.default_locale
    if params[:language].blank?
      I18n.locale = extract_locale_from_accept_language_header
    else
      I18n.locale = params[:language]
    end
  end

 def default_url_options
   { language: I18n.locale }
 end

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'] ? request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first : 'es'
  end
end
