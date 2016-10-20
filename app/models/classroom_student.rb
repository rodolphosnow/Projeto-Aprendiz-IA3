class ClassroomStudent < ActiveRecord::Base
  belongs_to :classroom
  belongs_to :apprentice
  belongs_to :teacher
  has_many :evaluations
  has_many :classroom_presences
end
