Rails.application.routes.draw do
  #recibe los datos del qr
  post 'qr_scanner/create'
  get 'qr_scanner/index'
  post 'qr_scanner/asistencia'

  #crear evento
  post 'evento/create'
  get 'evento/index'

  #registrar usuario
  post 'user/new'
  post 'user/create'
 
  #crear session
  post 'session/create'
end
