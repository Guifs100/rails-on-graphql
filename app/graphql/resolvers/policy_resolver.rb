require 'net/http'

module Resolvers
  class PolicyResolver < Resolvers::BaseResolver
    type Types::PolicyType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      response = Net::HTTP.get(URI("http://web:3000/policies/#{id}"))
      Rails.logger.info(response)
      JSON.parse(response)
    end
  end
end
