# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employer do
    employer_name "MyString"
    employer_zipcode "MyString"
    employer_phone "MyString"
    employer_url "MyString"
    employer_email "MyString"
    user nil
    employer_street_number "MyString"
    employer_street "MyString"
    employer_unit_number "MyString"
    employer_city "MyString"
    employer_state "MyString"
    employer_office_type "MyText"
  end
end
