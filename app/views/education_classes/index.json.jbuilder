json.array!(@education_classes) do |education_class|
  json.extract! education_class, :id, :class_name, :class_type, :class_keywords, :class_date_start, :class_date_end, :class_time_start, :class_time_end, :class_worth, :reps_id, :class_category, :class_url
  json.url education_class_url(education_class, format: :json)
end
