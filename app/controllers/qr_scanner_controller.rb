class QrScannerController < ApplicationController
    def index
      qr_scanner = QrScanner.all
      render json: qr_scanner
    end 

    def create

      
      @qr_scanner = QrScanner.new(qrscanner_params)
      buscar = QrScanner.find_by_data(params[:data])
      if buscar == nil
        if @qr_scanner.save
          render json: @qr_scanner, status: :created 
        else
          render json: @qr_scanner.errors, status: :unprocessable_entity
        end

      else
        
      end 
    
    end

    def asistencia
      # if solititanro != nil
      #   buscanroentrada = QrScanner.where(nroentrada: 1)
      #   if buscanroentrada == nil
      #     buscanroentrada.nroentrada = 1
      #   else
      #     buscanroentrada.nroentrada buscanroentrada.nroentrada + 1
      #     buscanroentrada.save
      #     render json : buscanroentrada.nroentrada
      #   end
      # end
      recibedata = params[:data].delete(" ")
      buscar = QrScanner.find_by_data(recibedata)
      
      if buscar != nil
        if buscar.asiste != true
          buscar.asiste = true
          pp buscar
          buscar.save
        else
          render json: { message: "ATENCION LA ENTRADA YA INGRESO", user: buscar }, status: :ok
        end
      else 
        render json: { message: "El qr no corresponde al evento", user: buscar }, status: :ok
      end 
    end

    private

    def qrscanner_params
      params.require(:qr_scanner).permit(:nombre,:apellido,:data,:correo,:telefono )
    end

   
end
