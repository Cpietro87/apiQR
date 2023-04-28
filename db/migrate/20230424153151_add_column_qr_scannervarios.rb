class AddColumnQrScannervarios < ActiveRecord::Migration[7.0]
  def change
    add_column :qr_scanners, :apellido, :string
    add_column :qr_scanners, :telefono, :string
    add_column :qr_scanners, :correo, :string
    add_column :qr_scanners, :evento_id, :integer
    add_column :qr_scanners, :nroentrada, :integer
    add_column :qr_scanners, :tipoentrada_id, :integer
    add_column :qr_scanners, :asiste, :boolean
  end
end
