class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
      flash[:notice] = "Article created successfully"
    else
      flash[:alert] = "Article not created successfully"
    end

    render new_article_path
  end

  private

  def article_params
    params.require(:article).permit(:name)
  end
end
