class SecretsController < ApplicationController
	before_action :require_login

	def show
		@current_user = session[:name]
	end

private

	def require_login
		if session.include? :name
		else 
			redirect_to login_path
		end 
	end


end