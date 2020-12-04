require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  setup do
    @cuidador = cuidadors(:one)
    @animal = animals(:one)
  end

  test "should get index" do
    get :index, params: { cuidador_id: @cuidador }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { cuidador_id: @cuidador }
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, params: { cuidador_id: @cuidador, animal: @animal.attributes }
    end

    assert_redirected_to cuidador_animal_path(@cuidador, Animal.last)
  end

  test "should show animal" do
    get :show, params: { cuidador_id: @cuidador, id: @animal }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { cuidador_id: @cuidador, id: @animal }
    assert_response :success
  end

  test "should update animal" do
    put :update, params: { cuidador_id: @cuidador, id: @animal, animal: @animal.attributes }
    assert_redirected_to cuidador_animal_path(@cuidador, Animal.last)
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, params: { cuidador_id: @cuidador, id: @animal }
    end

    assert_redirected_to cuidador_animals_path(@cuidador)
  end
end
