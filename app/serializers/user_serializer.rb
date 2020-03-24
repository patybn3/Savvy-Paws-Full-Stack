# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :last_name
  has_many :pets
end
