# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    employee_email "MyString"
    employee_phone "MyString"
    employee_zipcode "MyString"
    employee_first_name "MyString"
    employee_last_name "MyString"
    user nil
    employee_bages "MyString"
    employee_description "MyText"
    employee_experience_years 1
    employee_experience_months 1
    employee_lic_number "MyString"
    employee_type "MyString"
    employee_rating 1.5
    employee_punctuality false
    employee_dependability false
    employee_reliable_transportation false
    employee_accurate_calendar false
    employee_transportation false
    employee_school "MyString"
    employee_languages "MyString"
    employee_qualifications "MyString"
    employee_credentials "MyString"
    employee_experience "MyString"
    employee_phone_verified false
    employee_email_verified false
    employee_lic_verified false
  end
end
