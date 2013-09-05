class ProfilesController < ApplicationController

  def index
  	@users = Profile.find_all
  end

  def edit_user
  
  	

  end


  def show_user
  	id = params[:id]
  	@user = Profile.find_by_id(id)
  end
end