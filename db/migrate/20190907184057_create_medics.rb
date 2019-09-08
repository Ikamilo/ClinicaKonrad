class CreateMedics < ActiveRecord::Migration[6.0]
  def change
    create_table :medics do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.string :celular
      t.string :tipo

      t.timestamps
    end
  end
end
