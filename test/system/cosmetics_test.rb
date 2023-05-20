require "application_system_test_case"

class CosmeticsTest < ApplicationSystemTestCase
  setup do
    @cosmetic = cosmetics(:one)
  end

  test "visiting the index" do
    visit cosmetics_url
    assert_selector "h1", text: "Cosmetics"
  end

  test "should create cosmetic" do
    visit cosmetics_url
    click_on "New cosmetic"

    fill_in "Brand", with: @cosmetic.brand
    fill_in "Category", with: @cosmetic.category
    fill_in "Name", with: @cosmetic.name
    fill_in "Price", with: @cosmetic.price
    fill_in "Quantity", with: @cosmetic.quantity
    click_on "Create Cosmetic"

    assert_text "Cosmetic was successfully created"
    click_on "Back"
  end

  test "should update Cosmetic" do
    visit cosmetic_url(@cosmetic)
    click_on "Edit this cosmetic", match: :first

    fill_in "Brand", with: @cosmetic.brand
    fill_in "Category", with: @cosmetic.category
    fill_in "Name", with: @cosmetic.name
    fill_in "Price", with: @cosmetic.price
    fill_in "Quantity", with: @cosmetic.quantity
    click_on "Update Cosmetic"

    assert_text "Cosmetic was successfully updated"
    click_on "Back"
  end

  test "should destroy Cosmetic" do
    visit cosmetic_url(@cosmetic)
    click_on "Destroy this cosmetic", match: :first

    assert_text "Cosmetic was successfully destroyed"
  end
end
