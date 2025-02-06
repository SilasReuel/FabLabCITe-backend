class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  #POST /auth/login
  def login
    @usuario = Usuario.find_by_email(params[:email])
    if @usuario&.authenticate(params[:password])
      token = jwt_encode(id: @usuario.id)
      render json: { token: token }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
end
