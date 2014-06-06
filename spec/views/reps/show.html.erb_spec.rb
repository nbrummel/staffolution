require 'rails_helper'

RSpec.describe "reps/show", :type => :view do
  before(:each) do
    @rep = assign(:rep, Rep.create!(
      :rep_name => "Rep Name",
      :rep_type => "Rep Type",
      :rep_description => "MyText",
      :user => nil,
      :rep_email => "Rep Email",
      :rep_phone => "Rep Phone",
      :rep_url => "Rep Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rep Name/)
    expect(rendered).to match(/Rep Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Rep Email/)
    expect(rendered).to match(/Rep Phone/)
    expect(rendered).to match(/Rep Url/)
  end
end
