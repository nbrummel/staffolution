# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :education_class do
    class_name "MyString"
    class_type "MyString"
    class_keywords "MyText"
    class_date_start "2014-06-06"
    class_date_end "2014-06-06"
    class_time_start "2014-06-06 07:43:25"
    class_time_end "2014-06-06 07:43:25"
    class_worth 1
    reps nil
    class_category "MyString"
    class_url "MyString"
  end
end
