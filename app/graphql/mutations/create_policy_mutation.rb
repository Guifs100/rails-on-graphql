module Mutations
  class CreatePolicyMutation < ::Mutations::BaseMutation
    argument :policy, Types::PolicyInputType, required: true

    field :result, String, null: true

    def resolve(policy:)
      p '++++++++++++++++++++++++++++++++++'
      p 'Passei Aqui'
      p '++++++++++++++++++++++++++++++++++'
      { "result" => "OK" }
    end
  end
end
