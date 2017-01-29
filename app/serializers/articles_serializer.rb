class ArticlesSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
end