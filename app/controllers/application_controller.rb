class ApplicationController < ActionController::Base
  before_filter :set_locale

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_locale
    # if params[:locale] is nil then I18n.default_locale will be used
    I18n.locale = params[:locale]
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end

  protected
  #----------------------------------------------------------------------
  def set_lang
    I18n.locale = params[:locale] if params[:locale] =~/\A(en|vi)\Z/
  end
  #
end
