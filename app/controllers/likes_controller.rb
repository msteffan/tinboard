class LikesController < ApplicationController
#index
    def index
        # @pins = Pin.all
        # @user = User.find(params[:id])
    end
#new
    def new
        @like = Like.new
        @user = User.find(params[:id])
        # @article = Article.find(params[:id])
    end

#Create
    def create
        # @user = session[:user]["id"]
        # @article = Article.find(params[:id])
        Like.create(like_params)
        # {
        #   user_id: @user,
        #   article_id: @article
        #  })
        # @user = User.find_by(params[:id])
        # @pin = @user.pins.create!(pin_params)
        # redirect_to user_pin_path(@user, @pin)
        redirect_to articles_path
    end

#show
    def show
        redirect_to(articles_path)
        # @user = User.find(params[:id])
        # @pin = Pin.find(params[:id])
    end


#edit
    def edit
        # @pin = Pin.find(params[:id])
    end

#update
    def update

    end

#destroy
    def destroy
    end

private
    def like_params
        params.require(:like).permit(:user_id, :article_id)
    end

end
