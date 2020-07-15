class GeoDatum
  include Mongoid::Document
  include Mongoid::Timestamps
  field :type, type: String
  field :properties, type: Property
  field :geometry, type: Geometry

  embeds_one :properties, class_name: "Property"
  embeds_one :geometry, class_name: "Geometry"
end
