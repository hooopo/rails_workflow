class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :development_authenticate_user!

  def development_authenticate_user!
    authenticate_user! if Rails.env.development?
  end
end
