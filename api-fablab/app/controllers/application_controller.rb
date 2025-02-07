class ApplicationController < ActionController::API
  include JsonWebToken

  before_action :authenticate_request
  before_action :authorize_admin, only: [:create, :update]

  private
  def authenticate_request
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decoded = jwt_decode(header)
    @current_user = Usuario.find(decoded[:id])
  end

  def authorize_admin
    unless @current_user.admin?
      render json: {error: 'Access denied'}, status: :forbidden 
    end
  end
end
