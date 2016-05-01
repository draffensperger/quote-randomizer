class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_or_create_by(latest_ip_address: request.env['REMOTE_ADDR'])
  end
end
