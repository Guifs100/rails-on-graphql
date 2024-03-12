module Types
  class VehicleType < Types::BaseObject
    field :id, ID, null: false
    field :license_plate, String, null: false
    field :brand, String, null: false
    field :model, String, null: false
    field :year, String, null: false
  end
end
