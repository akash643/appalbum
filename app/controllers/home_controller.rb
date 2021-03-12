class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
   @album = current_user.albums
  end

end
