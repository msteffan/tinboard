class ArticlesController < ApplicationController

######## CRUD ROUTES  ########

#index
    def index
        @responses = HTTParty.get('http://content.guardianapis.com/search?section=politics&show-fields=body%2Cbyline%2Cheadline&api-key=chukudfqm5367xapx5fd29yk')

        @articles = Article.all
        @user = User.find(session[:user]["id"])
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
