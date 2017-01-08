require 'test_helper'

class KapCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kap_city = kap_cities(:one)
  end

  test "should get index" do
    get kap_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_kap_city_url
    assert_response :success
  end

  test "should create kap_city" do
    assert_difference('KapCity.count') do
      post kap_cities_url, params: { kap_city: { name: @kap_city.name, prefecture_id: @kap_city.prefecture_id, type: @kap_city.type } }
    end

    assert_redirected_to kap_city_url(KapCity.last)
  end

  test "should show kap_city" do
    get kap_city_url(@kap_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_kap_city_url(@kap_city)
    assert_response :success
  end

  test "should update kap_city" do
    patch kap_city_url(@kap_city), params: { kap_city: { name: @kap_city.name, prefecture_id: @kap_city.prefecture_id, type: @kap_city.type } }
    assert_redirected_to kap_city_url(@kap_city)
  end

  test "should destroy kap_city" do
    assert_difference('KapCity.count', -1) do
      delete kap_city_url(@kap_city)
    end

    assert_redirected_to kap_cities_url
  end
end
