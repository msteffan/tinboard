class UsersController < ApplicationController
    skip_before_action :authenticate
    #index
    def index
    end
    #new

    #Create

    #show

    #edit

    #destroy
    def sign_up
    end

    def sign_up!
        @user = User.new(
          username: params[:username],
          password: params[:password],
          password_confirmation: params[:password_confirmation]
        )
        if @user.save
          message = "Your account has been created!"
          redirect_to root_url
          flash[:notice] = message
        else
          message = "Your account couldn't be created. Did you enter a unique username and password?"
          flash.now[:notice] =  message
          render :sign_up
        end
    end

    def sign_in
    end

    def sign_in!
        @user = User.find_by(username: params[:username])
        if !@user
          message = "This user doesn't exist!"
        elsif !BCrypt::Password.new(@user.password_digest).is_password?(params[:password])
          message = "Your password's wrong!"
          redirect_to action: :sign_in
        else
          message = "You're signed in, #{@user.username}!"
          cookies[:username] = {
              value: @user.username,

          }
          session[:user] = @user
          redirect_to articles_path
        end
        flash[:notice] = message
        # redirect_to action: :sign_in
    end

    def sign_out
        reset_session
        redirect_to sign_in_path
    end


end
