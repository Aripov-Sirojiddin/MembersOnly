require "test_helper"

class ClubHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_house = club_houses(:one)
  end

  test "should get index" do
    get club_houses_url
    assert_response :success
  end

  test "should get new" do
    get new_club_house_url
    assert_response :success
  end

  test "should create club_house" do
    assert_difference("ClubHouse.count") do
      post club_houses_url, params: { club_house: { club_description: @club_house.club_description, club_name: @club_house.club_name, club_owner: @club_house.club_owner, string: @club_house.string } }
    end

    assert_redirected_to club_house_url(ClubHouse.last)
  end

  test "should show club_house" do
    get club_house_url(@club_house)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_house_url(@club_house)
    assert_response :success
  end

  test "should update club_house" do
    patch club_house_url(@club_house), params: { club_house: { club_description: @club_house.club_description, club_name: @club_house.club_name, club_owner: @club_house.club_owner, string: @club_house.string } }
    assert_redirected_to club_house_url(@club_house)
  end

  test "should destroy club_house" do
    assert_difference("ClubHouse.count", -1) do
      delete club_house_url(@club_house)
    end

    assert_redirected_to club_houses_url
  end
end
