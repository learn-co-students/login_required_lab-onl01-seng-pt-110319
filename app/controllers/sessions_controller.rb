class SessionsController < ApplicationController
    def new
    end
  
    def create
      name = params[:name]
      if current_user
        redirect_to root_path
      elsif name && name != ""
        session[:name] = params[:name]
        
        redirect_to secrets_show_path
      else
        redirect_to login_path 
      end 
    end
  
    def destroy
      session.delete :name
      
      redirect_to login_path
    end
end