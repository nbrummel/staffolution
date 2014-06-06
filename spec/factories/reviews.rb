# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    employee nil
    review_rating 1.5
    user nil
    review_description "MyText"
    review_employee_recommendation false
    employer nil
  end
end
