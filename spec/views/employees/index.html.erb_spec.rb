require 'rails_helper'

RSpec.describe "employees/index", :type => :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :employee_email => "Employee Email",
        :employee_phone => "Employee Phone",
        :employee_zipcode => "Employee Zipcode",
        :employee_first_name => "Employee First Name",
        :employee_last_name => "Employee Last Name",
        :user => nil,
        :employee_bages => "Employee Bages",
        :employee_description => "MyText",
        :employee_experience_years => 1,
        :employee_experience_months => 2,
        :employee_lic_number => "Employee Lic Number",
        :employee_type => "Employee Type",
        :employee_rating => 1.5,
        :employee_punctuality => false,
        :employee_dependability => false,
        :employee_reliable_transportation => false,
        :employee_accurate_calendar => false,
        :employee_transportation => false,
        :employee_school => "Employee School",
        :employee_languages => "Employee Languages",
        :employee_qualifications => "Employee Qualifications",
        :employee_credentials => "Employee Credentials",
        :employee_experience => "Employee Experience",
        :employee_phone_verified => false,
        :employee_email_verified => false,
        :employee_lic_verified => false
      ),
      Employee.create!(
        :employee_email => "Employee Email",
        :employee_phone => "Employee Phone",
        :employee_zipcode => "Employee Zipcode",
        :employee_first_name => "Employee First Name",
        :employee_last_name => "Employee Last Name",
        :user => nil,
        :employee_bages => "Employee Bages",
        :employee_description => "MyText",
        :employee_experience_years => 1,
        :employee_experience_months => 2,
        :employee_lic_number => "Employee Lic Number",
        :employee_type => "Employee Type",
        :employee_rating => 1.5,
        :employee_punctuality => false,
        :employee_dependability => false,
        :employee_reliable_transportation => false,
        :employee_accurate_calendar => false,
        :employee_transportation => false,
        :employee_school => "Employee School",
        :employee_languages => "Employee Languages",
        :employee_qualifications => "Employee Qualifications",
        :employee_credentials => "Employee Credentials",
        :employee_experience => "Employee Experience",
        :employee_phone_verified => false,
        :employee_email_verified => false,
        :employee_lic_verified => false
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Employee Email".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Employee First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Last Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Employee Bages".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Employee Lic Number".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Employee School".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Languages".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Qualifications".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Credentials".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Experience".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
