class Employer < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews
  validates_formatting_of :employer_zipcode, using: :us_zip
  validates_formatting_of :employer_phone, using: :us_phone
  validates_formatting_of :employer_url, using: :url
  validates_formatting_of :employer_email, using: :email
end
