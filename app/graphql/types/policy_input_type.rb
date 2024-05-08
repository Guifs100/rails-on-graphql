module Types
  class PolicyInputType < BaseInputObject
    argument :date_issue, String, required: true
    argument :policy_expiration, String, required: true
    argument :insured, Types::InsuredInputType, required: true
    argument :vehicle, Types::VehicleInputType, required: true
    argument :charge, Types::ChargeInputType, required: true
  end
end
