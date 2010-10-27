class SessionsController < ApplicationController
  def create
    self.current_user = request.env['rack.auth']['uid']
    redirect_to :controller => :pages, :action => :index
  end
  
  def session_clear
    self.current_user = nil
  end
  
  def logout
    self.classy_logout
  end

end