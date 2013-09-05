class UsersController < ApplicationController
  def index
  end
  def login

  end
  def signup
  end
  def create
  	if params[:user][:password].to_s  != params[:user][:password2].to_s
  		flash[:notice] = "Las contrasenas no concuerdan"
  	else
  		User.create( {username: params[:user][:username],password: params[:user][:password],token: params[:user][:authenticity_token]} )
  	end
  	redirect_to :action => :signup
  end
end
