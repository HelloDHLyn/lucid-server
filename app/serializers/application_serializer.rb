class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :package, :platform
end
