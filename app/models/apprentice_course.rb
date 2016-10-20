class ApprenticeCourse < ActiveRecord::Base
  belongs_to :apprentice
  belongs_to :course
end
