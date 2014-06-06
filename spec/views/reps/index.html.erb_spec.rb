require 'rails_helper'

RSpec.describe "reps/index", :type => :view do
  before(:each) do
    assign(:reps, [
      Rep.create!(
        :rep_name => "Rep Name",
        :rep_type => "Rep Type",
        :rep_description => "MyText",
        :user => nil,
        :rep_email => "Rep Email",
        :rep_phone => "Rep Phone",
        :rep_url => "Rep Url"
      ),
      Rep.create!(
        :rep_name => "Rep Name",
        :rep_type => "Rep Type",
        :rep_description => "MyText",
        :user => nil,
        :rep_email => "Rep Email",
        :rep_phone => "Rep Phone",
        :rep_url => "Rep Url"
      )
    ])
  end

  it "renders a list of reps" do
    render
    assert_select "tr>td", :text => "Rep Name".to_s, :count => 2
    assert_select "tr>td", :text => "Rep Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Rep Email".to_s, :count => 2
    assert_select "tr>td", :text => "Rep Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Rep Url".to_s, :count => 2
  end
end
