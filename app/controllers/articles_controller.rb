class ArticlesController < ApplicationController
    def new
        @userCategory = ['All', 'denim' , 'over fit' , 'color' , 'casual'];
    end 

    def view

    end

    def show
        @article = Article.find(params[:id])
    end

    def create 

        @article = Article.new(params.require(:articles).permit(:title, :text,:category, :photo))
        @article.save
        redirect_to @article
    end

    def index
        @articles = Article.all
    end


end


