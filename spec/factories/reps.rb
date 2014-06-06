# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rep, :class => 'Reps' do
    rep_name "MyString"
    rep_type "MyString"
    rep_description "MyText"
    user nil
    rep_email "MyString"
    rep_phone "MyString"
    rep_url "MyString"
  end
end
