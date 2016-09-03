class ReleaseSerializer < ActiveModel::Serializer
  attributes :id, :is_latest, :is_release, :version_code, :version_name, :path, :applicaton_id
end
