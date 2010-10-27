# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require 'omniauth/enterprise'

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # before_filter :login_required
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
 protected
  
  def authorization_required!
    if self.signed_in?
      return true
    else
      redirect_to '/auth/cas'
    end
  end
  
  def current_user
    @current_user ||= session[:user_id]
  end
  
  def logged_in?
    self.signed_in?
  end
  
  def signed_in?
    !!current_user
  end

  helper_method :current_user, :signed_in?, :logged_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user
  end
  
  def classy_logout
    redirect_to CLASSY_CAS_URL + '/logout'
  end
end
