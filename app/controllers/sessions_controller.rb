class SessionsController < ApplicationController
	def create
    	#render :text => request.env['omniauth.auth']['uid']
    	session['user'] =request.env['omniauth.auth']['uid']
    	redirect_to "/search/index"
    end
    def destroy
    	session.delete(:user)
    	redirect_to "/search/index"
    end
end
