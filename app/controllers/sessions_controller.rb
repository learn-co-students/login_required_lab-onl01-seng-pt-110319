class SessionsController < ApplicationController


    def new 
    end
  
    def create
        if params[:name] 
            session[:name]=params[:name]
            redirect_to root_path
        else
            redirect_to "/login"
        end
    end


  
    def destroy
      session.delete :name
      redirect_to "/login"
    end
  
    
      private 
  
    def require_login
      return head(:forbidden) unless session.include? :name
    end
end
