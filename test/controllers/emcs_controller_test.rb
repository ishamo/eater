require 'test_helper'

class EmcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emc = emcs(:one)
  end

  test "should get index" do
    get emcs_url
    assert_response :success
  end

  test "should get new" do
    get new_emc_url
    assert_response :success
  end

  test "should create emc" do
    assert_difference('Emc.count') do
      post emcs_url, params: { emc: { description: @emc.description, name: @emc.name } }
    end

    assert_redirected_to emc_url(Emc.last)
  end

  test "should show emc" do
    get emc_url(@emc)
    assert_response :success
  end

  test "should get edit" do
    get edit_emc_url(@emc)
    assert_response :success
  end

  test "should update emc" do
    patch emc_url(@emc), params: { emc: { description: @emc.description, name: @emc.name } }
    assert_redirected_to emc_url(@emc)
  end

  test "should destroy emc" do
    assert_difference('Emc.count', -1) do
      delete emc_url(@emc)
    end

    assert_redirected_to emcs_url
  end
end
