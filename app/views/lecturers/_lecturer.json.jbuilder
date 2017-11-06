json.extract! lecturer, :id, :lecturer_number, :full_name, :address, :date_of_birth, :place_of_birth, :phone, :gender, :religion, :created_at, :updated_at
json.url lecturer_url(lecturer, format: :json)
