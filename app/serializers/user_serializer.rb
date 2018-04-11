class UserSerializer < ActiveModel::Serializer
  attributes :id, :languages, :name, :email
end
