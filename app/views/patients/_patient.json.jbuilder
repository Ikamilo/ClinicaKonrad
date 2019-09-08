json.extract! patient, :id, :nombre, :apellido, :identificacion, :celular, :fecha_nacimiento, :documento, :created_at, :updated_at
json.url patient_url(patient, format: :json)
