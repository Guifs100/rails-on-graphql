# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :policies, resolver: Resolvers::PoliciesResolver
  end
end
