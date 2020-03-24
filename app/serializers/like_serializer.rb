class LikeSerializer < ActiveModel::Serializer
  attributes :id, :editable
  has_one :pet

  def editable
    scope == object.pet
  end
end
