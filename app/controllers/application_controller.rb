class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  protected
  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end
end

