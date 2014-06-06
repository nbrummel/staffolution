class Reps < ActiveRecord::Base
  belongs_to :user
  has_many :education_classes
  validates_formatting_of :rep_email, using: :email
  validates_formatting_of :rep_phone, using: :us_phone
  validates_formatting_of :rep_url, using: :url
  acts_as_votable 
end
