class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :direccion
      t.date :fecha

      t.timestamps
    end
  end
end
