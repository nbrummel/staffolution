require 'rails_helper'

RSpec.describe "jobs/edit", :type => :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :user => nil,
      :employee => nil,
      :job_position => "MyString",
      :job_description => "MyText",
      :job_compensation => 1.5,
      :job_filled => false,
      :job_title => "MyString",
      :employer => nil
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_user_id[name=?]", "job[user_id]"

      assert_select "input#job_employee_id[name=?]", "job[employee_id]"

      assert_select "input#job_job_position[name=?]", "job[job_position]"

      assert_select "textarea#job_job_description[name=?]", "job[job_description]"

      assert_select "input#job_job_compensation[name=?]", "job[job_compensation]"

      assert_select "input#job_job_filled[name=?]", "job[job_filled]"

      assert_select "input#job_job_title[name=?]", "job[job_title]"

      assert_select "input#job_employer_id[name=?]", "job[employer_id]"
    end
  end
end
