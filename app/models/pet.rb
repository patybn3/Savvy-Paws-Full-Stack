class Pet < ApplicationRecord
  belongs_to :current_user, class_name: 'User', foreign_key: 'user_id'
  has_one :user
end
