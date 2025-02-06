class Api::V1::UsuariosController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_usuario, only: %i[ show update destroy ]

  # GET /usuarios
  def index
    @usuarios = Usuario.all

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    render json: @usuario
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status: :created, location: api_v1_usuario_url(@usuario)
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def usuario_params
      permitted_params = params.require(:usuario).permit(:nome, :email, :excluido, :password, :cpf, :data_nascimento, :tipo, :score)
      Rails.logger.debug("Parâmetros permitidos: #{permitted_params.inspect}")
      permitted_params
    end
end
