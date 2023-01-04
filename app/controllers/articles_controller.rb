class ArticlesController < ApplicationController
    def new
        @article = Article.new
        #@article.title="demo"
    end

    def create
        @article = Article.create(title: params[:article][:title],content: params[:article][:content])
        render json: @article
    end
end
