# frozen_string_literal: true
require 'sneakers'
# require 'app/processor/create_policy_processor'

module Types
  class MutationType < Types::BaseObject
    field :teste_string, String, null: false do
      argument :teste, String, required: true
    end

    field :test_field, String, null: false

    field :create_policy, String, null: false do
      argument :teste, String, required: true
      argument :teste1, String, required: true
      argument :teste2, String, required: true
    end

    def test_field
      'Ola mundo'
    end

    def teste_string(teste:)
      'Banana' + teste
    end

    def create_policy(*args)
      payload = args[0].to_s

      p "Enviando a mensagem #{payload}"
      CreatePolicyProcessor.publisher(payload, to_queue: 'create_policy')
      payload
      # FAZER TRATATIVA CASO NÃO FUNCIONE
      # "#{args[0][:teste1]}"
    end

    private

    # def parser(args)
    #   payload = JSON.parse(args[0].to_json, symbolize_names: true)
    #   puts '-----------------------------------------------------'
    #   puts payload
    #   puts payload[:teste]
    #   puts '-----------------------------------------------------'
    # end
  end
end
