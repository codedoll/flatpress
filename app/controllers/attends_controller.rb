class AttendsController < ApplicationController
	def create
	@user = current_user
	@article = Article.find(params[:article_id])
	@attend = @article.attends.create(attend_params)
	redirect_to article_path(@article)
	end
 
  private
    def attend_params
      params.require(:attend).permit(:attendee)
    end
end
