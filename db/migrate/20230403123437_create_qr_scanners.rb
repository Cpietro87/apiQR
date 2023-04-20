class CreateQrScanners < ActiveRecord::Migration[7.0]
  def change
    create_table :qr_scanners do |t|
      t.string :nombre
      t.string :data

      t.timestamps
    end
  end
end
