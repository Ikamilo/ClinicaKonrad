class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.date :fecha_nacimiento
      t.string :documento

      t.timestamps
    end
  end
end
