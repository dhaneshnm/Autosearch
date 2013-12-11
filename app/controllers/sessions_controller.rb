class SessionsController < ApplicationController
	def create
    	#render :text => request.env['omniauth.auth']['uid']
    	session['user'] =request.env['omniauth.auth']['uid']
        @json_data = JSON.parse(ENV["YelpData"])
    end
    def destroy
    	session.delete(:user)
    	redirect_to "/search/index"
    end
    def yelp
    end	
end
