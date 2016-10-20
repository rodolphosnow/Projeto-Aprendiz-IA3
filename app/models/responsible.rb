class Responsible < ActiveRecord::Base
  has_one :user, as: :userable, dependent: :destroy
end
