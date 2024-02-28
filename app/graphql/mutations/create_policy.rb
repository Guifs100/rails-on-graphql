module Mutations
  class CreatePolicy < GraphQL::Schema::RelayClassicMutation
    field :policy, Types::PolicyType, null: false

    argument :date_issue, DateTime, required: true
    argument :policy_expiration, Datetime, required: true
    argument :insured, Types::InsuredType, required: true
    argument :vehicle, Types::VehicleType, required: true

    def resolve()
      {
        
      }
    end
  end
end
