# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    user nil
    employee nil
    job_position "MyString"
    job_description "MyText"
    job_start_date "2014-06-06"
    job_end_date "2014-06-06"
    job_compensation 1.5
    job_start_time "2014-06-06 07:43:43"
    job_end_time "2014-06-06 07:43:43"
    job_filled false
    job_title "MyString"
    employer nil
  end
end
