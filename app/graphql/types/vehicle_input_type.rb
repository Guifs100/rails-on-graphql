module Types
  class VehicleInputType < BaseInputObject
    argument :license_plate, String, required: true
    argument :brand, String, required: true
    argument :model, String, required: true
    argument :year, String, required: true
  end
end
