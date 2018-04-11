class UserSerializer < ActiveModel::Serializer
  attributes :id, :languages, :location, :name, :email, :age, :gender
end
