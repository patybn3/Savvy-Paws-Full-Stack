class PetSerializer < ActiveModel::Serializer
  attributes :id, :species, :breed, :name, :dob, :site, :num_likes, :editable
  belongs_to :user
  has_many :likes

  def editable
    scope == object.user
  end

  def num_likes
    object.likes.length
  end
end
