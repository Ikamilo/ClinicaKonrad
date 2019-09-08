json.extract! medic, :id, :nombre, :apellido, :identificacion, :celular, :tipo, :created_at, :updated_at
json.url medic_url(medic, format: :json)
