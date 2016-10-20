class Subject < ActiveRecord::Base
  belongs_to :course
  has_many :classrooms
  has_many :subject_evaluations
end
