class PetSerializer < ActiveModel::Serializer
  attributes :id, :species, :breed, :name, :dob, :favorite_toy
  has_one :current_user
end
