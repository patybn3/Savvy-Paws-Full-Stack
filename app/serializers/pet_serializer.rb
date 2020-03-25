class PetSerializer < ActiveModel::Serializer
  attributes :id, :species, :breed, :name, :dob, :site, :editable
  belongs_to :user
  # has_many :likes

  def editable
    scope == object.user
  end
end
