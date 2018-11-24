class CreateParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :parkings do |t|
      t.text :nombre
      t.string :direccion
      t.string :distrito
      t.decimal :precioxhora
      t.string :ubicacion

      t.timestamps
    end
  end
end
