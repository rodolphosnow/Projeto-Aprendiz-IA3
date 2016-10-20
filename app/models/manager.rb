class Manager < ActiveRecord::Base
  has_one :user, as: :userable, dependent: :destroy

  validates :user, presence: true
end
