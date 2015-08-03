class ArticlesController < ApplicationController
#index
    def index
        # @pins = Pin.all
        # @user = User.find(params[:id])
    end
#new
    def new
        # @pin = Pin.new
    end

#Create
    def create
        # @user = User.find_by(params[:id])
        # @pin = @user.pins.create!(pin_params)
        # redirect_to user_pin_path(@user, @pin)
    end

#show
    def show
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

# private
    # def pin_params
    #     params.require(:pin).permit(:title, :image_url, :comment, :user_id)
    # end

end
