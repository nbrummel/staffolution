json.array!(@reps) do |rep|
  json.extract! rep, :id, :rep_name, :rep_type, :rep_description, :user_id, :rep_email, :rep_phone, :rep_url
  json.url rep_url(rep, format: :json)
end
