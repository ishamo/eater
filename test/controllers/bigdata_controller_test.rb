require 'test_helper'

class BigdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bigdatum = bigdata(:one)
  end

  test "should get index" do
    get bigdata_url
    assert_response :success
  end

  test "should get new" do
    get new_bigdatum_url
    assert_response :success
  end

  test "should create bigdatum" do
    assert_difference('Bigdatum.count') do
      post bigdata_url, params: { bigdatum: { description: @bigdatum.description, name: @bigdatum.name } }
    end

    assert_redirected_to bigdatum_url(Bigdatum.last)
  end

  test "should show bigdatum" do
    get bigdatum_url(@bigdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_bigdatum_url(@bigdatum)
    assert_response :success
  end

  test "should update bigdatum" do
    patch bigdatum_url(@bigdatum), params: { bigdatum: { description: @bigdatum.description, name: @bigdatum.name } }
    assert_redirected_to bigdatum_url(@bigdatum)
  end

  test "should destroy bigdatum" do
    assert_difference('Bigdatum.count', -1) do
      delete bigdatum_url(@bigdatum)
    end

    assert_redirected_to bigdata_url
  end
end
