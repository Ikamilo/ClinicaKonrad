# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_08_001837) do

  create_table "appointments", force: :cascade do |t|
    t.integer "consulting_room_id", null: false
    t.integer "patient_id", null: false
    t.integer "medic_id", null: false
    t.date "fecha_cita"
    t.time "hora_inicio"
    t.time "hora_fin"
    t.string "motivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consulting_room_id"], name: "index_appointments_on_consulting_room_id"
    t.index ["medic_id"], name: "index_appointments_on_medic_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "consulting_rooms", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo"
    t.string "ubicacion"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medics", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "identificacion"
    t.string "celular"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.date "fecha_nacimiento"
    t.string "documento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "consulting_rooms"
  add_foreign_key "appointments", "medics"
  add_foreign_key "appointments", "patients"
end
