require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "should create character" do
    visit characters_url
    click_on "New character"

    fill_in "Action points", with: @character.action_points
    fill_in "Armor class", with: @character.armor_class
    fill_in "Charisma", with: @character.charisma
    fill_in "Constitution", with: @character.constitution
    fill_in "Dexterity", with: @character.dexterity
    fill_in "Experience", with: @character.experience
    fill_in "Extra action points", with: @character.extra_action_points
    fill_in "Hp", with: @character.hp
    fill_in "Initiative", with: @character.initiative
    fill_in "Intelligence", with: @character.intelligence
    fill_in "Level", with: @character.level
    fill_in "Mana", with: @character.mana
    fill_in "Name", with: @character.name
    fill_in "Speed", with: @character.speed
    fill_in "Strength", with: @character.strength
    fill_in "Wisdom", with: @character.wisdom
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "should update Character" do
    visit character_url(@character)
    click_on "Edit this character", match: :first

    fill_in "Action points", with: @character.action_points
    fill_in "Armor class", with: @character.armor_class
    fill_in "Charisma", with: @character.charisma
    fill_in "Constitution", with: @character.constitution
    fill_in "Dexterity", with: @character.dexterity
    fill_in "Experience", with: @character.experience
    fill_in "Extra action points", with: @character.extra_action_points
    fill_in "Hp", with: @character.hp
    fill_in "Initiative", with: @character.initiative
    fill_in "Intelligence", with: @character.intelligence
    fill_in "Level", with: @character.level
    fill_in "Mana", with: @character.mana
    fill_in "Name", with: @character.name
    fill_in "Speed", with: @character.speed
    fill_in "Strength", with: @character.strength
    fill_in "Wisdom", with: @character.wisdom
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "should destroy Character" do
    visit character_url(@character)
    click_on "Destroy this character", match: :first

    assert_text "Character was successfully destroyed"
  end
end
