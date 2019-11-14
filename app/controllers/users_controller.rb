class UsersController < ApplicationController

    def new
        @user=User.new
    end

    def index
      redirect_to   '/' 
    end

    def create 
        @user = User.new(user_params)
        if @user.save
          flash[:notice] = "Account created successfully!"
          session[:user_id]=@user.id
          redirect_to user_path(@user)
        else
        #   @user = user.all
          render :new
        end
    end

    def edit

      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      if @user.save
        redirect_to user_path(@user)
      else
        render :edit
      end

    end

    def show 
      u1= User.find(params[:id])
      if current_user && current_user.password_digest == u1.password_digest
        @user = User.find(params[:id])
      else 
        flash[:message] = "You must be logged in to access this page."
        redirect_to   '/' 
      end
    end

  private
    def user_params
        params.require(:user).permit(:name, :user_name, :address, :age, :gender,:password, :password_confirmation )
    end

end
