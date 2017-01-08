require 'test_helper'

class KalCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kal_city = kal_cities(:one)
  end

  test "should get index" do
    get kal_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_kal_city_url
    assert_response :success
  end

  test "should create kal_city" do
    assert_difference('KalCity.count') do
      post kal_cities_url, params: { kal_city: { name: @kal_city.name, regional_unity_id: @kal_city.regional_unity_id, type: @kal_city.type } }
    end

    assert_redirected_to kal_city_url(KalCity.last)
  end

  test "should show kal_city" do
    get kal_city_url(@kal_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_kal_city_url(@kal_city)
    assert_response :success
  end

  test "should update kal_city" do
    patch kal_city_url(@kal_city), params: { kal_city: { name: @kal_city.name, regional_unity_id: @kal_city.regional_unity_id, type: @kal_city.type } }
    assert_redirected_to kal_city_url(@kal_city)
  end

  test "should destroy kal_city" do
    assert_difference('KalCity.count', -1) do
      delete kal_city_url(@kal_city)
    end

    assert_redirected_to kal_cities_url
  end
end
