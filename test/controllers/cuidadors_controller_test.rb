require 'test_helper'

class CuidadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuidador = cuidadors(:one)
  end

  test "should get index" do
    get cuidadors_url
    assert_response :success
  end

  test "should get new" do
    get new_cuidador_url
    assert_response :success
  end

  test "should create cuidador" do
    assert_difference('Cuidador.count') do
      post cuidadors_url, params: { cuidador: { cpf: @cuidador.cpf, data: @cuidador.data, nome: @cuidador.nome, rg: @cuidador.rg, sexo: @cuidador.sexo, telefone: @cuidador.telefone } }
    end

    assert_redirected_to cuidador_url(Cuidador.last)
  end

  test "should show cuidador" do
    get cuidador_url(@cuidador)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuidador_url(@cuidador)
    assert_response :success
  end

  test "should update cuidador" do
    patch cuidador_url(@cuidador), params: { cuidador: { cpf: @cuidador.cpf, data: @cuidador.data, nome: @cuidador.nome, rg: @cuidador.rg, sexo: @cuidador.sexo, telefone: @cuidador.telefone } }
    assert_redirected_to cuidador_url(@cuidador)
  end

  test "should destroy cuidador" do
    assert_difference('Cuidador.count', -1) do
      delete cuidador_url(@cuidador)
    end

    assert_redirected_to cuidadors_url
  end
end
