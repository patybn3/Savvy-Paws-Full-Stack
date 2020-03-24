class LikeSerializer < ActiveModel::Serializer
  attributes :id, :owner
  has_one :pet
  has_one :user

  def owner
    object.user.last_name
  end
end
