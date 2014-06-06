json.array!(@reviews) do |review|
  json.extract! review, :id, :employee_id, :review_rating, :user_id, :review_description, :review_employee_recommendation, :employer_id
  json.url review_url(review, format: :json)
end
