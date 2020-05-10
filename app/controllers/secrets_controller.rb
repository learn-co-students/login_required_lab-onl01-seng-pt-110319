class SecretsController < ApplicationController 


    def show 
        redirect_to login_path unless logged_in?
        current_user
    end
    # def show 
    #     if !session.include? :name 
    #         redirect_to login_path 
    #     else 
    #         current_user 
    #     end 
    # end

    
end