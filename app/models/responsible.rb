class Responsible < ActiveRecord::Base
  has_one :user, as: :userable, dependent: :destroy
  belongs_to :apprentice

  validates :user, presence: true
end
