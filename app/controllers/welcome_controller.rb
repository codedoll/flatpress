class WelcomeController < ApplicationController
# 	@track = Track.find(params[:id])
# @sections = @track.sections

    def index
   	    @user = current_user
	    @articles = Article.all
	    if user_signed_in?
	    	@attends = Attend.where(attendee: @user.username)
		end
  	end

end
