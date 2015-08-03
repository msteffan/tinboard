class ArticlesController < ApplicationController

######## CRUD ROUTES  ########

#index
    def index
        @articles = Article.all
        @user = User.find(session[:user]["id"])
        @counter
    end
# #new
#     def new
#     end
# #Create
#     def create
#         # @user = User.find_by(params[:id])
#         # @pin = @user.pins.create!(pin_params)
#         # redirect_to user_pin_path(@user, @pin)
#     end
#show
    def show
        @article = Article.find(params[:id])
        @user = User.find(session[:user]["id"])
    end
# #edit
#     def edit
#     end
# #update
#     def update
#     end
# #destroy
#     def destroy
#     end

    private
    def article_params
        params.require(:article).permit(:title, :author, :publication, :fulltext, :length)
    end

end
