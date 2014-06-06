require 'rails_helper'

RSpec.describe "reviews/edit", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :employee => nil,
      :review_rating => 1.5,
      :user => nil,
      :review_description => "MyText",
      :review_employee_recommendation => false,
      :employer => nil
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_employee_id[name=?]", "review[employee_id]"

      assert_select "input#review_review_rating[name=?]", "review[review_rating]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"

      assert_select "textarea#review_review_description[name=?]", "review[review_description]"

      assert_select "input#review_review_employee_recommendation[name=?]", "review[review_employee_recommendation]"

      assert_select "input#review_employer_id[name=?]", "review[employer_id]"
    end
  end
end
