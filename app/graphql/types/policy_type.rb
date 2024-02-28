module Types
  def VehicleType < Types::BaseObject
    field :id, ID, null: false
    field :date_issue, DateTime, null: false
    field :policy_expiration, DateTime, null: false
    field :insured, Types::InsuredType, null: false
    field :vehicle, Types::VehicleType, null: false
  end
end
