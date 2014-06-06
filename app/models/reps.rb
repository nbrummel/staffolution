class Reps < ActiveRecord::Base
  belongs_to :user
  has_many :education_classes
  validates_formatting_of :rep_email, using: :email
end
