# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # before_filter :login_required
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def login_required
    
  end
  
  def logout
    # optionally do some local cleanup here
    # ...

    CASClient::Frameworks::Rails::Filter.logout(self)
  end
end
