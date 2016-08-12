class WelcomeController < ApplicationController
	
    def index
   	    @user = current_user
	    @articles = Article.all
	    if user_signed_in?
	    	@attends = Attend.where(attendee: @user.username)
		end
  	end

end
