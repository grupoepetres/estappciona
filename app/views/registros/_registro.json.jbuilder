json.extract! registro, :id, :correo, :tipo_doc, :documento, :created_at, :updated_at
json.url registro_url(registro, format: :json)
