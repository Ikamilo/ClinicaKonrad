class CreateConsultingRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :consulting_rooms do |t|
      t.string :nombre
      t.string :codigo
      t.string :ubicacion
      t.string :tipo

      t.timestamps
    end
  end
end
