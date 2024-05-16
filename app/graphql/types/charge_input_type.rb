module Types
  class ChargeInputType < BaseInputObject
    argument :payment_id, String, required: true
    argument :payment_link, String, required: true
  end
end
