require "application_system_test_case"

class SheetsTest < ApplicationSystemTestCase
  setup do
    @sheet = sheets(:one)
  end

  test "visiting the index" do
    visit sheets_url
    assert_selector "h1", text: "Sheets"
  end

  test "should create sheet" do
    visit sheets_url
    click_on "New sheet"

    fill_in "Action points", with: @sheet.action_points
    fill_in "Armor class", with: @sheet.armor_class
    fill_in "Charisma", with: @sheet.charisma
    fill_in "Constitution", with: @sheet.constitution
    fill_in "Dexterity", with: @sheet.dexterity
    fill_in "Experience", with: @sheet.experience
    fill_in "Extra action points", with: @sheet.extra_action_points
    fill_in "Hp", with: @sheet.hp
    fill_in "Initiative", with: @sheet.initiative
    fill_in "Intelligence", with: @sheet.intelligence
    fill_in "Level", with: @sheet.level
    fill_in "Mana", with: @sheet.mana
    fill_in "Name", with: @sheet.name
    fill_in "Speed", with: @sheet.speed
    fill_in "Strength", with: @sheet.strength
    fill_in "Wisdom", with: @sheet.wisdom
    click_on "Create Sheet"

    assert_text "Sheet was successfully created"
    click_on "Back"
  end

  test "should update Sheet" do
    visit sheet_url(@sheet)
    click_on "Edit this sheet", match: :first

    fill_in "Action points", with: @sheet.action_points
    fill_in "Armor class", with: @sheet.armor_class
    fill_in "Charisma", with: @sheet.charisma
    fill_in "Constitution", with: @sheet.constitution
    fill_in "Dexterity", with: @sheet.dexterity
    fill_in "Experience", with: @sheet.experience
    fill_in "Extra action points", with: @sheet.extra_action_points
    fill_in "Hp", with: @sheet.hp
    fill_in "Initiative", with: @sheet.initiative
    fill_in "Intelligence", with: @sheet.intelligence
    fill_in "Level", with: @sheet.level
    fill_in "Mana", with: @sheet.mana
    fill_in "Name", with: @sheet.name
    fill_in "Speed", with: @sheet.speed
    fill_in "Strength", with: @sheet.strength
    fill_in "Wisdom", with: @sheet.wisdom
    click_on "Update Sheet"

    assert_text "Sheet was successfully updated"
    click_on "Back"
  end

  test "should destroy Sheet" do
    visit sheet_url(@sheet)
    click_on "Destroy this sheet", match: :first

    assert_text "Sheet was successfully destroyed"
  end
end
