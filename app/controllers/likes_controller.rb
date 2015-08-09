class LikesController < ApplicationController
#index
    def index
    end
#new
    def new
        @like = Like.new
        @user = User.find(params[:id])
    end

#Create
    def create
        Like.create(like_params)
        redirect_to articles_path
    end

#destroy
    def destroy
        @user = User.find(session[:user]["id"])
        @like = Like.find(params[:id])
        @like.destroy
        redirect_to user_path(@user)
    end

private
    def like_params
        params.require(:like).permit(:user_id, :article_id)
    end

end
