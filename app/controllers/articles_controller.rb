class ArticlesController < ApplicationController

  def index
    @user = current_user
    if @user.username == "lyn"
      @articles = Article.all
    else
      @articles = Article.where(username: @user.username)
    end
  end

	def show
    @user = current_user
    @article = Article.find(params[:id])
    @articles = Article.where(username: @article.username)
  end

	def new
    @user = current_user
    @article = Article.new
	end

  def edit
    @user = current_user
    @article = Article.find(params[:id])
  end

  def create
    @user = current_user
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end 
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end
 
private
  def article_params
    params.require(:article).permit(:title, :text, :username, :eventname, :eventdate_start, :eventdate_end)
  end
  	
end
