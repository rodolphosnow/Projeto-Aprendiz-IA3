class Company < ActiveRecord::Base
  has_one :user, as: :userable, dependent: :destroy
  has_many :contracts
  has_many :apprentices, through: :contracts
  
  validates :user, presence: true
end
