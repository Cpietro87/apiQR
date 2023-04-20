Rails.application.routes.draw do
  post 'qr_scanner/create'
  get 'qr_scanner/index'

  post 'evento/create'
  get 'evento/index'
  
end
