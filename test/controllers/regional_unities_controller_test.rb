require 'test_helper'

class RegionalUnitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regional_unity = regional_unities(:one)
  end

  test "should get index" do
    get regional_unities_url
    assert_response :success
  end

  test "should get new" do
    get new_regional_unity_url
    assert_response :success
  end

  test "should create regional_unity" do
    assert_difference('RegionalUnity.count') do
      post regional_unities_url, params: { regional_unity: { name: @regional_unity.name, region_id: @regional_unity.region_id } }
    end

    assert_redirected_to regional_unity_url(RegionalUnity.last)
  end

  test "should show regional_unity" do
    get regional_unity_url(@regional_unity)
    assert_response :success
  end

  test "should get edit" do
    get edit_regional_unity_url(@regional_unity)
    assert_response :success
  end

  test "should update regional_unity" do
    patch regional_unity_url(@regional_unity), params: { regional_unity: { name: @regional_unity.name, region_id: @regional_unity.region_id } }
    assert_redirected_to regional_unity_url(@regional_unity)
  end

  test "should destroy regional_unity" do
    assert_difference('RegionalUnity.count', -1) do
      delete regional_unity_url(@regional_unity)
    end

    assert_redirected_to regional_unities_url
  end
end
