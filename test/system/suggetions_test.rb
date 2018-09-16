require "application_system_test_case"

class SuggetionsTest < ApplicationSystemTestCase
  setup do
    @suggetion = suggetions(:one)
  end

  test "visiting the index" do
    visit suggetions_url
    assert_selector "h1", text: "Suggetions"
  end

  test "creating a Suggetion" do
    visit suggetions_url
    click_on "New Suggetion"

    fill_in "Closestatus", with: @suggetion.closestatus
    fill_in "Customername", with: @suggetion.customername
    fill_in "Estimatedate", with: @suggetion.estimatedate
    fill_in "Flag", with: @suggetion.flag
    fill_in "Memo", with: @suggetion.memo
    fill_in "Moviedate", with: @suggetion.moviedate
    fill_in "Username", with: @suggetion.username
    click_on "Create Suggetion"

    assert_text "Suggetion was successfully created"
    click_on "Back"
  end

  test "updating a Suggetion" do
    visit suggetions_url
    click_on "Edit", match: :first

    fill_in "Closestatus", with: @suggetion.closestatus
    fill_in "Customername", with: @suggetion.customername
    fill_in "Estimatedate", with: @suggetion.estimatedate
    fill_in "Flag", with: @suggetion.flag
    fill_in "Memo", with: @suggetion.memo
    fill_in "Moviedate", with: @suggetion.moviedate
    fill_in "Username", with: @suggetion.username
    click_on "Update Suggetion"

    assert_text "Suggetion was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggetion" do
    visit suggetions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggetion was successfully destroyed"
  end
end
