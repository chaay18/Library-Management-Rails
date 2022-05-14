require "test_helper"

class EmpruntordisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empruntordi = empruntordis(:one)
  end

  test "should get index" do
    get empruntordis_url
    assert_response :success
  end

  test "should get new" do
    get new_empruntordi_url
    assert_response :success
  end

  test "should create empruntordi" do
    assert_difference('Empruntordi.count') do
      post empruntordis_url, params: { empruntordi: {  } }
    end

    assert_redirected_to empruntordi_url(Empruntordi.last)
  end

  test "should show empruntordi" do
    get empruntordi_url(@empruntordi)
    assert_response :success
  end

  test "should get edit" do
    get edit_empruntordi_url(@empruntordi)
    assert_response :success
  end

  test "should update empruntordi" do
    patch empruntordi_url(@empruntordi), params: { empruntordi: {  } }
    assert_redirected_to empruntordi_url(@empruntordi)
  end

  test "should destroy empruntordi" do
    assert_difference('Empruntordi.count', -1) do
      delete empruntordi_url(@empruntordi)
    end

    assert_redirected_to empruntordis_url
  end
end
