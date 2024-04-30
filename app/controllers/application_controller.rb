class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  private

  def jwt_decodification(token)
    decoded = JWT.decode(token, ENV['JWT_TOKEN'], true, algorithm: 'HS256')
  end
end
