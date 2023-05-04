class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo, null: false 
      t.string :password_digest, null: false
      t.string :telefono

      t.timestamps
    end
    add_index :users, :correo, unique: true
  end
end
