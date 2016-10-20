class ClassroomPresence < ActiveRecord::Base
  belongs_to :classroom_students
end
