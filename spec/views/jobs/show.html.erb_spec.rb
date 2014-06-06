require 'rails_helper'

RSpec.describe "jobs/show", :type => :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :user => nil,
      :employee => nil,
      :job_position => "Job Position",
      :job_description => "MyText",
      :job_compensation => 1.5,
      :job_filled => false,
      :job_title => "Job Title",
      :employer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Job Position/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(//)
  end
end
