Qr 
rails generate model QrScanner nombre:string data:string
rails generate controller QrScanner 
Eventos
rails generate model Evento nombre:string direccion:string fecha:date
rails generate controller Evento
Usuarios
rails generate model User nombre:string apellido:string dni:string email:string password:string telefono:string
rails generate controller User

agregado de campos a qr_scanners
rails generate migration AddColumnQrScannervarios//
    add_column :qr_scanners, :apellido, :string//
    add_column :qr_scanners, :telefono, :string//
    add_column :qr_scanners, :correo, :string//
    add_column :qr_scanners, :evento_id, :integer//
    add_column :qr_scanners, :nroentrada, :integer//
    add_column :qr_scanners, :tipoentrada_id, :integer//
    add_column :qr_scanners, :asiste, :boolean///

agregado de campos a eventos//
rails generate migration AddColumnEventoVarios//
    add_column :eventos, :organizador_id, :integer//
    add_column :eventos, :imagen, :string//
    add_column :eventos, :ubicacion, :string//
    add_column :eventos, :reseña, :text//
    add_column :eventos, :cupo, :integer//

crear Organizador///
    rails generate controller Organizador///
    rails generate model Organizador nombre:string telefono:string mail:string direccion:string tipo_id:integer///

Crear Tipo////
    rails generate controller Tipo////
    rails generate model Tipo nombre:string tipotipo_id:integer////

Crear TipoTipo (tipo de entrada, de organizador)////
    rails generate controller Tipotipo///
    rails generate model Tipotipo nombre:string///

agregar campo qr_scanner nroentrada
rails generate migration AddColumnScannerNroentrada
add_column :qrscanners, :nroentrada, :string

