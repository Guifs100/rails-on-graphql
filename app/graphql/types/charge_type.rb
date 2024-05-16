module Types
  class ChargeType < Types::BaseObject
    field :id, ID, null: false
    field :payment_id, String, null: false
    field :payment_link, String, null: false
  end
end
