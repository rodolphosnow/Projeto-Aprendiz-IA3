class Apprentice < ActiveRecord::Base
  has_one :user, as: :userable, dependent: :destroy
  has_many :responsibles
  has_many :contracts
  has_many :companies, through: :contracts
  has_many :classroom_students
  has_many :classroom, through: :classroom_students
  has_many :evaluations, through: :classroom_students
  has_many :apprentice_courses
  has_many :courses, through: :apprentice_courses


  validates :user, presence: true
end
