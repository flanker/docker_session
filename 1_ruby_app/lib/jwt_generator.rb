require 'jwt'

class JwtGenerator

  def generate text
    payload = {data: text}
    token = JWT.encode payload, nil, 'none'
  end

end
