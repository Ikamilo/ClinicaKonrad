class Createtable < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :consulting_room, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :medic, null: false, foreign_key: true
      t.date :fecha_cita
      t.time :hora_inicio
      t.time :hora_fin
      t.string :motivo

      t.timestamps
    end
  end
end
