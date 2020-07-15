class Geometry
  include Mongoid::Document
  field :type, type: String
  field :coordinates, type: Array

  embeds_many :coordinates, class_name: "LatLng"
  embedded_in :geo_datum, class_name: "GeoDatum"
end
