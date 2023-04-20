class EventoController < ApplicationController
    def index
        @evento = Evento.all
        render json: @evento
      end 
  
      def create
        @evento = Evento.new(evento_params)
        if @evento.save
          render json: @evento, status: :created
        else
          render json: @evento.errors, status: :unprocessable_entity
        end
      end
  
      private
  
      def evento_params
        params.require(:evento).permit(:nombre,:direccion,:fecha )
      end
  
end
