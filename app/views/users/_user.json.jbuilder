json.extract! user, :id, :nombres, :apellidos, :correo, :tipo_documento, :numero_documento, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
