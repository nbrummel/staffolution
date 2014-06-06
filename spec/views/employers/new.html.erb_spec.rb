require 'rails_helper'

RSpec.describe "employers/new", :type => :view do
  before(:each) do
    assign(:employer, Employer.new(
      :employer_name => "MyString",
      :employer_zipcode => "MyString",
      :employer_phone => "MyString",
      :employer_url => "MyString",
      :employer_email => "MyString",
      :user => nil,
      :employer_street_number => "MyString",
      :employer_street => "MyString",
      :employer_unit_number => "MyString",
      :employer_city => "MyString",
      :employer_state => "MyString",
      :employer_office_type => "MyText"
    ))
  end

  it "renders new employer form" do
    render

    assert_select "form[action=?][method=?]", employers_path, "post" do

      assert_select "input#employer_employer_name[name=?]", "employer[employer_name]"

      assert_select "input#employer_employer_zipcode[name=?]", "employer[employer_zipcode]"

      assert_select "input#employer_employer_phone[name=?]", "employer[employer_phone]"

      assert_select "input#employer_employer_url[name=?]", "employer[employer_url]"

      assert_select "input#employer_employer_email[name=?]", "employer[employer_email]"

      assert_select "input#employer_user_id[name=?]", "employer[user_id]"

      assert_select "input#employer_employer_street_number[name=?]", "employer[employer_street_number]"

      assert_select "input#employer_employer_street[name=?]", "employer[employer_street]"

      assert_select "input#employer_employer_unit_number[name=?]", "employer[employer_unit_number]"

      assert_select "input#employer_employer_city[name=?]", "employer[employer_city]"

      assert_select "input#employer_employer_state[name=?]", "employer[employer_state]"

      assert_select "textarea#employer_employer_office_type[name=?]", "employer[employer_office_type]"
    end
  end
end
