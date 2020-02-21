class Pet < ApplicationRecord
  belongs_to :user
  has_one :user
end
