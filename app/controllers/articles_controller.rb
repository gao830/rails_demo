class ArticlesController < ApplicationController
  def new
    @article = Article.new
    
  end
  
  def create
    # render plain:  params[:article].permit(:title, :description)
    @article = Article.new(article_params)
    @article.save
    # print(params)
    redirect_to article_show(@article)
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end
 