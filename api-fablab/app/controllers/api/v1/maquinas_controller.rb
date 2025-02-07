class Api::V1::MaquinasController < ApplicationController
  skip_before_action :authenticate_request, only: [:index]
  before_action :set_maquina, only: %i[ show update destroy ]

  # GET /maquinas
  def index
    @maquinas = Maquina.all

    render json: @maquinas
  end

  # GET /maquinas/1
  def show
    render json: @maquina
  end

  # POST /maquinas
  def create
    @maquina = Maquina.new(maquina_params)

    if @maquina.save
      render json: @maquina, status: :created, location: api_v1_maquina_url(@maquina)
    else
      render json: @maquina.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maquinas/1
  def update
    if @maquina.update(maquina_params)
      render json: @maquina
    else
      render json: @maquina.errors, status: :unprocessable_entity
    end
  end

  # DELETE /maquinas/1
  def destroy
    @maquina.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquina
      @maquina = Maquina.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def maquina_params
      params.expect(maquina: [ :apelido, :nome_tecnico, :imagem, :descricao ])
    end
end
