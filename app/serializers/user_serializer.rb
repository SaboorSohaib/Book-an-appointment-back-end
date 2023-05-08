class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :gender, :age, :email, :password, :created_at
end
