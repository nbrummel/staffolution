class EducationClass < ActiveRecord::Base
  belongs_to :reps
  validates_formatting_of :class_url, using: :url
end
