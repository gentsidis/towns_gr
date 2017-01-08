require 'test_helper'

class TownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @town = towns(:one)
  end

  test "should get index" do
    get towns_url
    assert_response :success
  end

  test "should get new" do
    get new_town_url
    assert_response :success
  end

  test "should create town" do
    assert_difference('Town.count') do
      post towns_url, params: { town: { kal_base: @town.kal_base, kal_townID: @town.kal_townID, kal_type: @town.kal_type, kap_city_id: @town.kap_city_id, kap_townID: @town.kap_townID, kap_type: @town.kap_type, name: @town.name, population: @town.population, section_id: @town.section_id, type: @town.type } }
    end

    assert_redirected_to town_url(Town.last)
  end

  test "should show town" do
    get town_url(@town)
    assert_response :success
  end

  test "should get edit" do
    get edit_town_url(@town)
    assert_response :success
  end

  test "should update town" do
    patch town_url(@town), params: { town: { kal_base: @town.kal_base, kal_townID: @town.kal_townID, kal_type: @town.kal_type, kap_city_id: @town.kap_city_id, kap_townID: @town.kap_townID, kap_type: @town.kap_type, name: @town.name, population: @town.population, section_id: @town.section_id, type: @town.type } }
    assert_redirected_to town_url(@town)
  end

  test "should destroy town" do
    assert_difference('Town.count', -1) do
      delete town_url(@town)
    end

    assert_redirected_to towns_url
  end
end
