require "application_system_test_case"

class GadgetsTest < ApplicationSystemTestCase
  setup do
    @gadget = gadgets(:one)
  end

  test "visiting the index" do
    visit gadgets_url
    assert_selector "h1", text: "Gadgets"
  end

  test "should create gadget" do
    visit gadgets_url
    click_on "New gadget"

    fill_in "Brand", with: @gadget.brand
    fill_in "Condition", with: @gadget.condition
    fill_in "Description", with: @gadget.description
    fill_in "Price", with: @gadget.price
    fill_in "Title", with: @gadget.title
    click_on "Create Gadget"

    assert_text "Gadget was successfully created"
    click_on "Back"
  end

  test "should update Gadget" do
    visit gadget_url(@gadget)
    click_on "Edit this gadget", match: :first

    fill_in "Brand", with: @gadget.brand
    fill_in "Condition", with: @gadget.condition
    fill_in "Description", with: @gadget.description
    fill_in "Price", with: @gadget.price
    fill_in "Title", with: @gadget.title
    click_on "Update Gadget"

    assert_text "Gadget was successfully updated"
    click_on "Back"
  end

  test "should destroy Gadget" do
    visit gadget_url(@gadget)
    click_on "Destroy this gadget", match: :first

    assert_text "Gadget was successfully destroyed"
  end
end
