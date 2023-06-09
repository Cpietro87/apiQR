class UserController < ApplicationController
    def new
        @user = User.new
    end

    def create
        print(user_params)
        @user = User.new(user_params)
        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:nombre, :apellido, :correo, :password, :telefono)
    end
end