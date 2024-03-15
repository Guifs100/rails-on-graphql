require 'net/http'
require 'open-uri'

module Resolvers
  class PoliciesResolver < Resolvers::BaseResolver
    type [ Types::PolicyType ], null: false
    argument :limit, Integer, required: false

    def resolve(limit:)
      uri = URI.parse('http://web:3000/policies')
      params = { limit: limit }
      uri.query = URI.encode_www_form(params)
      response = uri.open.read
      Rails.logger.info(response)

      JSON.parse(response)
    end
  end
end
