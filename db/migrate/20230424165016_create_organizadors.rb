class CreateOrganizadors < ActiveRecord::Migration[7.0]
  def change
    create_table :organizadors do |t|
      t.string :nombre
      t.string :telefono
      t.string :mail
      t.string :direccion
      t.integer :tipo_id

      t.timestamps
    end
  end
end
