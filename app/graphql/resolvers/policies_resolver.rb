require 'net/http'

module Resolvers
  class PoliciesResolver < Resolvers::BaseResolver
    type [ Types::PolicyType ], null: false
    argument :limit, Integer, required: false

    def resolve(limit:)
      response = Net::HTTP.get(URI('http://web:3000/policies'))
      Rails.logger.info(response)
      parsed_response = JSON.parse(response, symbolize_names: true)
      parsed_response
    end
  end
end
