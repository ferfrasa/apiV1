class PostSerializer < ActiveModel::Serializer
    attributes :id, :body ,:title
    belongs_to :user 
    
    class UserSerializer < ActiveModel::Serializer
        attributes :name
    end
end