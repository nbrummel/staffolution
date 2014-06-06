class Reps < ActiveRecord::Base
  belongs_to :user
  has_many :education_classes
end
