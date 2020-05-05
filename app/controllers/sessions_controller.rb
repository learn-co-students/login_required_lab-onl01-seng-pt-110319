class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to :login
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  # def create
  #   if params[:name].nil? || params[:name].empty?
  #     redirect_to :login
  #   else
  #     @user = User.find_by(params[:name])
  #     if @user && @user.authenticate(params[:password])
  #       session[:user_id] = @user.id 
  #       redirect_to '/'
  #     else
  #       redirect_to login_path
  #     end
  #   end
  # end

  def destroy
    if !session[:name].nil?
      session.delete :name 
    end
    redirect_to '/'
  end
end
