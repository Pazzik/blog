class ArticlesController < ApplicationController

  before_filter :authenticate_user! , only: [:new,:create]

  def index
    @articles = Article.all
  end

  def new
  end

  def edit
   get_article
  end

  def show
    get_article
  end

  def update
    get_article
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

  def create
    @article = Article.new(article_params)
    if @article.save
      render action: 'create'
    else
      render action: 'new'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

  def get_article
    @article = Article.find(params[:id])
  end
end
