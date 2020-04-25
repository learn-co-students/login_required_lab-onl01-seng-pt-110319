class SecretsController < ApplicationController
  def new
  end
  
  def show 
    if current_user
      render 'sessions/show'
    else
      redirect_to '/new'
    end
  end
end
