require 'rails_helper'

RSpec.describe "jobs/index", :type => :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :user => nil,
        :employee => nil,
        :job_position => "Job Position",
        :job_description => "MyText",
        :job_compensation => 1.5,
        :job_filled => false,
        :job_title => "Job Title",
        :employer => nil
      ),
      Job.create!(
        :user => nil,
        :employee => nil,
        :job_position => "Job Position",
        :job_description => "MyText",
        :job_compensation => 1.5,
        :job_filled => false,
        :job_title => "Job Title",
        :employer => nil
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Job Position".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
