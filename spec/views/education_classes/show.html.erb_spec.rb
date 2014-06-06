require 'rails_helper'

RSpec.describe "education_classes/show", :type => :view do
  before(:each) do
    @education_class = assign(:education_class, EducationClass.create!(
      :class_name => "Class Name",
      :class_type => "Class Type",
      :class_keywords => "MyText",
      :class_worth => 1,
      :reps => nil,
      :class_category => "Class Category",
      :class_url => "Class Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Class Name/)
    expect(rendered).to match(/Class Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Class Category/)
    expect(rendered).to match(/Class Url/)
  end
end
