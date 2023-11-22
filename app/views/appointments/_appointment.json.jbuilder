json.extract! appointment, :id, :startTime, :duration, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
