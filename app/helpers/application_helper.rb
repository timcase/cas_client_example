# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def logged_in?
    session[:cas_user]
    # raise session[:cas_user].to_s
    # raise controller.session[:cas_last_valid_ticket].to_s
    # not session[:cas_last_valid_ticket].nil?
  end
  

end
