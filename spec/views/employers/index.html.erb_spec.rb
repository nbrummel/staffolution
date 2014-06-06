require 'rails_helper'

RSpec.describe "employers/index", :type => :view do
  before(:each) do
    assign(:employers, [
      Employer.create!(
        :employer_name => "Employer Name",
        :employer_zipcode => "Employer Zipcode",
        :employer_phone => "Employer Phone",
        :employer_url => "Employer Url",
        :employer_email => "Employer Email",
        :user => nil,
        :employer_street_number => "Employer Street Number",
        :employer_street => "Employer Street",
        :employer_unit_number => "Employer Unit Number",
        :employer_city => "Employer City",
        :employer_state => "Employer State",
        :employer_office_type => "MyText"
      ),
      Employer.create!(
        :employer_name => "Employer Name",
        :employer_zipcode => "Employer Zipcode",
        :employer_phone => "Employer Phone",
        :employer_url => "Employer Url",
        :employer_email => "Employer Email",
        :user => nil,
        :employer_street_number => "Employer Street Number",
        :employer_street => "Employer Street",
        :employer_unit_number => "Employer Unit Number",
        :employer_city => "Employer City",
        :employer_state => "Employer State",
        :employer_office_type => "MyText"
      )
    ])
  end

  it "renders a list of employers" do
    render
    assert_select "tr>td", :text => "Employer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Url".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Employer Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Street".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Unit Number".to_s, :count => 2
    assert_select "tr>td", :text => "Employer City".to_s, :count => 2
    assert_select "tr>td", :text => "Employer State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
