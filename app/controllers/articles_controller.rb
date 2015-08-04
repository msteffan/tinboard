class ArticlesController < ApplicationController

######## CRUD ROUTES  ########

#index
    def index
        @articles = Article.all
        @user = User.find(session[:user]["id"])
        @class
    end

    def show
        @article = Article.find(params[:id])
        @user = User.find(session[:user]["id"])
        @likes = @article.likes
    end


    private
    def article_params
        params.require(:article).permit(:title, :author, :publication, :fulltext, :length)
    end

end
