json.array!(@employers) do |employer|
  json.extract! employer, :id, :employer_name, :employer_zipcode, :employer_phone, :employer_url, :employer_email, :user_id, :employer_street_number, :employer_street, :employer_unit_number, :employer_city, :employer_state, :employer_office_type
  json.url employer_url(employer, format: :json)
end
