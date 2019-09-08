json.extract! appointment, :id, :consulting_room_id, :patient_id, :medic_id, :fecha_cita, :hora_inicio, :hora_fin, :motivo, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
