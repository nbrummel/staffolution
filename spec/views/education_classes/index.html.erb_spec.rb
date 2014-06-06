require 'rails_helper'

RSpec.describe "education_classes/index", :type => :view do
  before(:each) do
    assign(:education_classes, [
      EducationClass.create!(
        :class_name => "Class Name",
        :class_type => "Class Type",
        :class_keywords => "MyText",
        :class_worth => 1,
        :reps => nil,
        :class_category => "Class Category",
        :class_url => "Class Url"
      ),
      EducationClass.create!(
        :class_name => "Class Name",
        :class_type => "Class Type",
        :class_keywords => "MyText",
        :class_worth => 1,
        :reps => nil,
        :class_category => "Class Category",
        :class_url => "Class Url"
      )
    ])
  end

  it "renders a list of education_classes" do
    render
    assert_select "tr>td", :text => "Class Name".to_s, :count => 2
    assert_select "tr>td", :text => "Class Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Class Category".to_s, :count => 2
    assert_select "tr>td", :text => "Class Url".to_s, :count => 2
  end
end
