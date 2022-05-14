require "test_helper"

class OrdinateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordinateur = ordinateurs(:one)
  end

  test "should get index" do
    get ordinateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_ordinateur_url
    assert_response :success
  end

  test "should create ordinateur" do
    assert_difference('Ordinateur.count') do
      post ordinateurs_url, params: { ordinateur: { marque: @ordinateur.marque, nbr_copies: @ordinateur.nbr_copies } }
    end

    assert_redirected_to ordinateur_url(Ordinateur.last)
  end

  test "should show ordinateur" do
    get ordinateur_url(@ordinateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordinateur_url(@ordinateur)
    assert_response :success
  end

  test "should update ordinateur" do
    patch ordinateur_url(@ordinateur), params: { ordinateur: { marque: @ordinateur.marque, nbr_copies: @ordinateur.nbr_copies } }
    assert_redirected_to ordinateur_url(@ordinateur)
  end

  test "should destroy ordinateur" do
    assert_difference('Ordinateur.count', -1) do
      delete ordinateur_url(@ordinateur)
    end

    assert_redirected_to ordinateurs_url
  end
end
