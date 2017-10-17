class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :uri, :label, :image, :source, :url, :share_url, :yield, :calories
end