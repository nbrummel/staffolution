json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :employee_id, :job_position, :job_description, :job_start_date, :job_end_date, :job_compensation, :job_start_time, :job_end_time, :job_filled, :job_title, :employer_id
  json.url job_url(job, format: :json)
end
