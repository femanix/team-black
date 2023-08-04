class AuthsController < ApplicationController

  # Cria o token de autorização 
  def create
    token = JWT.encode payload, SECRET_KEY, 'HS256'
    render json: {token: token}
  end

  # Permite os parâmetros e deve definir como irá expirar o token
  def payload
    params.require(:auth).permit(:username, :password)
    {
      username: params[:username],
      password: params[:password]
    }
  end  
end
