require 'rails_helper'

RSpec.describe "reviews/index", :type => :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :employee => nil,
        :review_rating => 1.5,
        :user => nil,
        :review_description => "MyText",
        :review_employee_recommendation => false,
        :employer => nil
      ),
      Review.create!(
        :employee => nil,
        :review_rating => 1.5,
        :user => nil,
        :review_description => "MyText",
        :review_employee_recommendation => false,
        :employer => nil
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
