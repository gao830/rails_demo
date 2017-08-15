class ArticlesController < ApplicationController
  
  def index
    
    @articles = Article.all
  end
  
  def new
    @article = Article.new
    
  end
  
  def create
    # render plain:  params[:article].permit(:title, :description)
    @article = Article.new(article_params)
    # @article.save
    # print(params)
    
    if @article.save
      flash[:notice] = "Created!"
      redirect_to article_path(@article)
    else
      render 'new'
    end
    
    
  end
  
  
  def edit
    @article = Article.find_by(id: params[:id])
  end
  
  def updated
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  
  end
  
  
  def show
    @article = Article.find_by(id: params[:id])
    # if @article.errors.any?
    #   redirect_to home_path
    # end
    
  end
  
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end
 