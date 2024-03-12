module Types
  class InsuredInputType < BaseInputObject
    argument :name, String, required: true
    argument :cpf, String, required: true
  end
end
