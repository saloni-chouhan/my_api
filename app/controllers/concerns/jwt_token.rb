require 'jwt'

module JwtToken
	extend ActiveSupport::Concern
	SECRET_KEY = "bestpeers"

	def jwt_encode(payload, exp: 7.days.from_now)
		payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY, "HS256")
	end

  def jwt_decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end

end