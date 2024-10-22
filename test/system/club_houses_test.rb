require "application_system_test_case"

class ClubHousesTest < ApplicationSystemTestCase
  setup do
    @club_house = club_houses(:one)
  end

  test "visiting the index" do
    visit club_houses_url
    assert_selector "h1", text: "Club houses"
  end

  test "should create club house" do
    visit club_houses_url
    click_on "New club house"

    fill_in "Club description", with: @club_house.club_description
    fill_in "Club name", with: @club_house.club_name
    fill_in "Club owner", with: @club_house.club_owner
    fill_in "String", with: @club_house.string
    click_on "Create Club house"

    assert_text "Club house was successfully created"
    click_on "Back"
  end

  test "should update Club house" do
    visit club_house_url(@club_house)
    click_on "Edit this club house", match: :first

    fill_in "Club description", with: @club_house.club_description
    fill_in "Club name", with: @club_house.club_name
    fill_in "Club owner", with: @club_house.club_owner
    fill_in "String", with: @club_house.string
    click_on "Update Club house"

    assert_text "Club house was successfully updated"
    click_on "Back"
  end

  test "should destroy Club house" do
    visit club_house_url(@club_house)
    click_on "Destroy this club house", match: :first

    assert_text "Club house was successfully destroyed"
  end
end
