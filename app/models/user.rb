class User < ApplicationRecord
    has_secure_password
    
    validates :password , presence: true 
    validates_presence_of :correo, :message => "Coloque tipo de Usuario"
    validates_uniqueness_of :correo, :message => "Atención el Usuario ya ha sido cargado" 
    validates_format_of :correo, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
