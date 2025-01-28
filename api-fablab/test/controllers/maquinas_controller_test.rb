require "test_helper"

class MaquinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maquina = maquinas(:one)
  end

  test "should get index" do
    get maquinas_url, as: :json
    assert_response :success
  end

  test "should create maquina" do
    assert_difference("Maquina.count") do
      post maquinas_url, params: { maquina: { apelido: @maquina.apelido, descricao: @maquina.descricao, imagem: @maquina.imagem, nome_tecnico: @maquina.nome_tecnico } }, as: :json
    end

    assert_response :created
  end

  test "should show maquina" do
    get maquina_url(@maquina), as: :json
    assert_response :success
  end

  test "should update maquina" do
    patch maquina_url(@maquina), params: { maquina: { apelido: @maquina.apelido, descricao: @maquina.descricao, imagem: @maquina.imagem, nome_tecnico: @maquina.nome_tecnico } }, as: :json
    assert_response :success
  end

  test "should destroy maquina" do
    assert_difference("Maquina.count", -1) do
      delete maquina_url(@maquina), as: :json
    end

    assert_response :no_content
  end
end
