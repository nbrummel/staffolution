require 'rails_helper'

RSpec.describe "education_classes/edit", :type => :view do
  before(:each) do
    @education_class = assign(:education_class, EducationClass.create!(
      :class_name => "MyString",
      :class_type => "MyString",
      :class_keywords => "MyText",
      :class_worth => 1,
      :reps => nil,
      :class_category => "MyString",
      :class_url => "MyString"
    ))
  end

  it "renders the edit education_class form" do
    render

    assert_select "form[action=?][method=?]", education_class_path(@education_class), "post" do

      assert_select "input#education_class_class_name[name=?]", "education_class[class_name]"

      assert_select "input#education_class_class_type[name=?]", "education_class[class_type]"

      assert_select "textarea#education_class_class_keywords[name=?]", "education_class[class_keywords]"

      assert_select "input#education_class_class_worth[name=?]", "education_class[class_worth]"

      assert_select "input#education_class_reps_id[name=?]", "education_class[reps_id]"

      assert_select "input#education_class_class_category[name=?]", "education_class[class_category]"

      assert_select "input#education_class_class_url[name=?]", "education_class[class_url]"
    end
  end
end
