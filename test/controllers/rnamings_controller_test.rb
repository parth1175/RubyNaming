require 'test_helper'

class RnamingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rnaming = rnamings(:one)
  end

  test "should get index" do
    get rnamings_url
    assert_response :success
  end

  test "should get new" do
    get new_rnaming_url
    assert_response :success
  end

  test "should create rnaming" do
    assert_difference('Rnaming.count') do
      post rnamings_url, params: { rnaming: {  } }
    end

    assert_redirected_to rnaming_url(Rnaming.last)
  end

  test "should show rnaming" do
    get rnaming_url(@rnaming)
    assert_response :success
  end

  test "should get edit" do
    get edit_rnaming_url(@rnaming)
    assert_response :success
  end

  test "should update rnaming" do
    patch rnaming_url(@rnaming), params: { rnaming: {  } }
    assert_redirected_to rnaming_url(@rnaming)
  end

  test "should destroy rnaming" do
    assert_difference('Rnaming.count', -1) do
      delete rnaming_url(@rnaming)
    end

    assert_redirected_to rnamings_url
  end
end
