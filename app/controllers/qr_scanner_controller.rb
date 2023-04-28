class QrScannerController < ApplicationController
    def index
      qr_scanner = QrScanner.all
      render json: qr_scanner
    end 

    def create
      @qr_scanner = QrScanner.new(qrscanner_params)
      buscar = QrScanner.find_by_nombre(params[:nombre])
      if buscar != nil
        render json: { message: "El usuario ya está registrado", user: buscar }, status: :ok
      else
        if @qr_scanner.save
          render json: @qr_scanner, status: :created
        else
          render json: @qr_scanner.errors, status: :unprocessable_entity
        end
        
      end 
    
    end

    private

    def qrscanner_params
      params.require(:qr_scanner).permit(:nombre,:data )
    end

   
end
