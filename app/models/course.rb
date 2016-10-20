class Course < ActiveRecord::Base
  has_many :subjects
  has_many :apprentice_courses
  has_many :apprentices, through: :apprentice_courses
end
