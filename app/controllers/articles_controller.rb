class ArticlesController < ApplicationController

######## CRUD ROUTES  ########

#index
    def index
        if params[:query] != nil
            @guardian_article = GuardianArticle.new(params[:query])
        end
        @articles = Article.all
        @user = User.find(session[:user]["id"])
    end

#show
    def show
        @article = Article.find(params[:id])
        @user = User.find(session[:user]["id"])
        @likes = @article.likes
    end

end
