class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, alert: exception.message
    end
  end
end
