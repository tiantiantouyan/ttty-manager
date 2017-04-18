require 'test_helper'

class KvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kv = kvs(:one)
  end

  test "should get index" do
    get kvs_url
    assert_response :success
  end

  test "should get new" do
    get new_kv_url
    assert_response :success
  end

  test "should create kv" do
    assert_difference('Kv.count') do
      post kvs_url, params: { kv: { key: @kv.key, val: @kv.val } }
    end

    assert_redirected_to kv_url(Kv.last)
  end

  test "should show kv" do
    get kv_url(@kv)
    assert_response :success
  end

  test "should get edit" do
    get edit_kv_url(@kv)
    assert_response :success
  end

  test "should update kv" do
    patch kv_url(@kv), params: { kv: { key: @kv.key, val: @kv.val } }
    assert_redirected_to kv_url(@kv)
  end

  test "should destroy kv" do
    assert_difference('Kv.count', -1) do
      delete kv_url(@kv)
    end

    assert_redirected_to kvs_url
  end
end
