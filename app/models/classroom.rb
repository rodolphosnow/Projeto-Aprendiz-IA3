class Classroom < ActiveRecord::Base
  belongs_to :subject
  has_many :classroom_students
end
