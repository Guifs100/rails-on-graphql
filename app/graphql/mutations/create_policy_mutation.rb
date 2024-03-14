module Mutations
  class CreatePolicyMutation < ::Mutations::BaseMutation
    argument :policy, Types::PolicyInputType, required: true

    field :result, String, null: true

    def resolve(policy:)
      CreatePolicyPublisher.publish(policy.to_h, 'create_policy')
      { "result" => "OK" }
    rescue StandardError => e
      raise GraphQL::ExecutionError, e.message
    end
  end
end
