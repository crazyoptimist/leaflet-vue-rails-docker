class LatLng
  include Mongoid::Document
  field :lat, type: Float
  field :lng, type: Float

  embedded_in :geometry, class_name: "Geometry"
end
