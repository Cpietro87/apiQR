class CreateTipotipos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipotipos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
