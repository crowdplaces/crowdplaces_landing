class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = detect_locale || I18n.default_locale
  end

  def detect_locale
    # if explicit informed, take it. Otherwise try to detect browser's settings.
    locale = params[:locale] || request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    I18n.available_locales.include?(locale.to_sym) ? locale : nil
  end

  protected
  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end
end

