class Employee < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews
  validates_formatting_of :employee_email, using: :email
  validates_formatting_of :employee_phone, using: :us_phone
  validates_formatting_of :employee_zipcode, using: :us_zip
  acts_as_votable 
end
