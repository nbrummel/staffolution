require 'rails_helper'

RSpec.describe "employees/show", :type => :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Employee Email/)
    expect(rendered).to match(/Employee Phone/)
    expect(rendered).to match(/Employee Zipcode/)
    expect(rendered).to match(/Employee First Name/)
    expect(rendered).to match(/Employee Last Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Employee Bages/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Employee Lic Number/)
    expect(rendered).to match(/Employee Type/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Employee School/)
    expect(rendered).to match(/Employee Languages/)
    expect(rendered).to match(/Employee Qualifications/)
    expect(rendered).to match(/Employee Credentials/)
    expect(rendered).to match(/Employee Experience/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
