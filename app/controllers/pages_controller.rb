class PagesController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter
  def index
     @username = session[:cas_user]
  end
end