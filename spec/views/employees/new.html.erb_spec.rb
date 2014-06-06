require 'rails_helper'

RSpec.describe "employees/new", :type => :view do
  before(:each) do
    assign(:employee, Employee.new(
      :employee_email => "MyString",
      :employee_phone => "MyString",
      :employee_zipcode => "MyString",
      :employee_first_name => "MyString",
      :employee_last_name => "MyString",
      :user => nil,
      :employee_bages => "MyString",
      :employee_description => "MyText",
      :employee_experience_years => 1,
      :employee_experience_months => 1,
      :employee_lic_number => "MyString",
      :employee_type => "MyString",
      :employee_rating => 1.5,
      :employee_punctuality => false,
      :employee_dependability => false,
      :employee_reliable_transportation => false,
      :employee_accurate_calendar => false,
      :employee_transportation => false,
      :employee_school => "MyString",
      :employee_languages => "MyString",
      :employee_qualifications => "MyString",
      :employee_credentials => "MyString",
      :employee_experience => "MyString",
      :employee_phone_verified => false,
      :employee_email_verified => false,
      :employee_lic_verified => false
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_employee_email[name=?]", "employee[employee_email]"

      assert_select "input#employee_employee_phone[name=?]", "employee[employee_phone]"

      assert_select "input#employee_employee_zipcode[name=?]", "employee[employee_zipcode]"

      assert_select "input#employee_employee_first_name[name=?]", "employee[employee_first_name]"

      assert_select "input#employee_employee_last_name[name=?]", "employee[employee_last_name]"

      assert_select "input#employee_user_id[name=?]", "employee[user_id]"

      assert_select "input#employee_employee_bages[name=?]", "employee[employee_bages]"

      assert_select "textarea#employee_employee_description[name=?]", "employee[employee_description]"

      assert_select "input#employee_employee_experience_years[name=?]", "employee[employee_experience_years]"

      assert_select "input#employee_employee_experience_months[name=?]", "employee[employee_experience_months]"

      assert_select "input#employee_employee_lic_number[name=?]", "employee[employee_lic_number]"

      assert_select "input#employee_employee_type[name=?]", "employee[employee_type]"

      assert_select "input#employee_employee_rating[name=?]", "employee[employee_rating]"

      assert_select "input#employee_employee_punctuality[name=?]", "employee[employee_punctuality]"

      assert_select "input#employee_employee_dependability[name=?]", "employee[employee_dependability]"

      assert_select "input#employee_employee_reliable_transportation[name=?]", "employee[employee_reliable_transportation]"

      assert_select "input#employee_employee_accurate_calendar[name=?]", "employee[employee_accurate_calendar]"

      assert_select "input#employee_employee_transportation[name=?]", "employee[employee_transportation]"

      assert_select "input#employee_employee_school[name=?]", "employee[employee_school]"

      assert_select "input#employee_employee_languages[name=?]", "employee[employee_languages]"

      assert_select "input#employee_employee_qualifications[name=?]", "employee[employee_qualifications]"

      assert_select "input#employee_employee_credentials[name=?]", "employee[employee_credentials]"

      assert_select "input#employee_employee_experience[name=?]", "employee[employee_experience]"

      assert_select "input#employee_employee_phone_verified[name=?]", "employee[employee_phone_verified]"

      assert_select "input#employee_employee_email_verified[name=?]", "employee[employee_email_verified]"

      assert_select "input#employee_employee_lic_verified[name=?]", "employee[employee_lic_verified]"
    end
  end
end
