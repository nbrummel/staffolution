require 'rails_helper'

RSpec.describe "employers/show", :type => :view do
  before(:each) do
    @employer = assign(:employer, Employer.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Employer Name/)
    expect(rendered).to match(/Employer Zipcode/)
    expect(rendered).to match(/Employer Phone/)
    expect(rendered).to match(/Employer Url/)
    expect(rendered).to match(/Employer Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Employer Street Number/)
    expect(rendered).to match(/Employer Street/)
    expect(rendered).to match(/Employer Unit Number/)
    expect(rendered).to match(/Employer City/)
    expect(rendered).to match(/Employer State/)
    expect(rendered).to match(/MyText/)
  end
end
