class HomeController < ApplicationController
  
  before_filter CASClient::Frameworks::Rails::Filter, :except => [:index]
  # skip_before_filter :login_required, :only => [:index]
  def index
    # raise self.instance_methods.inspect
    # @username = cookies['user']
     # @username = self.env['rack.session'][:cas_user]
     @username = session[:cas_user]
  end
  
  def logout
      # optionally do some local cleanup here
      # ...
      
    CASClient::Frameworks::Rails::Filter.logout(self)
  end
end