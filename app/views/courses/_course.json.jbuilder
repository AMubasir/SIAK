json.extract! course, :id, :name, :credit, :major_id, :created_at, :updated_at
json.url course_url(course, format: :json)
