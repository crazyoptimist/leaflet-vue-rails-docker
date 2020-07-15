class Property
  include Mongoid::Document
  field :name, type: String
  field :amenity, type: String
  field :popupContent, type: String

  embedded_in :geo_datum, class_name: "GeoDatum"
end
