module Types
  class PolicyType < Types::BaseObject
    field :id, ID, null: false
    field :date_issue, String, null: false
    field :policy_expiration, String, null: false
    field :insured, Types::InsuredType, null: false
    field :vehicle, Types::VehicleType, null: false
  end
end
