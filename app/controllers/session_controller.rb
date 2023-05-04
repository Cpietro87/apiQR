class SessionController < ApplicationController
    def new
    end

    def create
        @user = User.find_by_correo(params[:correo])
        pp @user
        if @user&.authenticate(params[:password])
            render json: { message: "Inicio de session es correcto" }, status: :ok
        else

        end
    end

    private

    def user_params
        params.require(:user).permit(:nombre, :apellido, :correo, :password, :telefono)
    end
end