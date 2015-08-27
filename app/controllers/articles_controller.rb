class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
   @articles = Article.all
  end
  def show
   @article = Article.find(params[:id])
  end
  def new
   @article = Article.new
  end
  def create
  @article = Article.new(params[:article])
  @article.save
  redirect_to article_path(@article)



  end

end
