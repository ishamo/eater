require 'test_helper'

class AnysharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anyshare = anyshares(:one)
  end

  test "should get index" do
    get anyshares_url
    assert_response :success
  end

  test "should get new" do
    get new_anyshare_url
    assert_response :success
  end

  test "should create anyshare" do
    assert_difference('Anyshare.count') do
      post anyshares_url, params: { anyshare: { description: @anyshare.description, name: @anyshare.name } }
    end

    assert_redirected_to anyshare_url(Anyshare.last)
  end

  test "should show anyshare" do
    get anyshare_url(@anyshare)
    assert_response :success
  end

  test "should get edit" do
    get edit_anyshare_url(@anyshare)
    assert_response :success
  end

  test "should update anyshare" do
    patch anyshare_url(@anyshare), params: { anyshare: { description: @anyshare.description, name: @anyshare.name } }
    assert_redirected_to anyshare_url(@anyshare)
  end

  test "should destroy anyshare" do
    assert_difference('Anyshare.count', -1) do
      delete anyshare_url(@anyshare)
    end

    assert_redirected_to anyshares_url
  end
end
