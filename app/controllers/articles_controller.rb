class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to welcome_index_path
  end

  def index
    @article = Article.new
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    redirect_to welcome_index_path
    if @article.update(article_params)
      flash[:notice] = "Article was updated"
    else
      flash[:notice] = "Article was not updated"
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to welcome_index_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :content, :comment)
    end
end