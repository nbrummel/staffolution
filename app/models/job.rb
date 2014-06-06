class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :employee
  belongs_to :employer
end
