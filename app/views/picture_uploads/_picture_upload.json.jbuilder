json.extract! picture_upload, :id, :title, :description, :created_at, :updated_at
json.url picture_upload_url(picture_upload, format: :json)
