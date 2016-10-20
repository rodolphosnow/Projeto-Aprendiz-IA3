class Contract < ActiveRecord::Base
  belongs_to :apprentice
  belongs_to :company
end
