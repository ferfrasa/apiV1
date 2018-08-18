class PostSerializer < ActiveModel::Serializer
    attributes :id, :body ,:title, :created_at
    belongs_to :user 
    
    class UserSerializer < ActiveModel::Serializer
        attributes :name, :token
    end
end