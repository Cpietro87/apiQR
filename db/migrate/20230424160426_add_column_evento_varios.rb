class AddColumnEventoVarios < ActiveRecord::Migration[7.0]
  def change
    add_column :eventos, :organizador_id, :integer
    add_column :eventos, :imagen, :string
    add_column :eventos, :ubicacion, :string
    add_column :eventos, :reseña, :text
    add_column :eventos, :cupo, :integer
  end
end
