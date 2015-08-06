class ArticlesController < ApplicationController

######## CRUD ROUTES  ########

#index
    def index
        if params[:query] != nil
            @guardian_article = GuardianArticle.new(params[:query])
            # cookies[:query] = params[:query]
        end
        @articles = Article.all
        @user = User.find(session[:user]["id"])
    end

    def show
        @article = Article.find(params[:id])
        @user = User.find(session[:user]["id"])
        @likes = @article.likes
    end

    def guardian_show

        @guardian_article = GuardianArticle.find_by(cookies[:query])
    end

    private
    def article_params
        params.require(:article).permit(:title, :author, :publication, :fulltext, :length)
    end

end
