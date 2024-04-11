require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference("Character.count") do
      post characters_url, params: { character: { action_points: @character.action_points, armor_class: @character.armor_class, charisma: @character.charisma, constitution: @character.constitution, dexterity: @character.dexterity, experience: @character.experience, extra_action_points: @character.extra_action_points, hp: @character.hp, initiative: @character.initiative, intelligence: @character.intelligence, level: @character.level, mana: @character.mana, name: @character.name, speed: @character.speed, strength: @character.strength, wisdom: @character.wisdom } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { action_points: @character.action_points, armor_class: @character.armor_class, charisma: @character.charisma, constitution: @character.constitution, dexterity: @character.dexterity, experience: @character.experience, extra_action_points: @character.extra_action_points, hp: @character.hp, initiative: @character.initiative, intelligence: @character.intelligence, level: @character.level, mana: @character.mana, name: @character.name, speed: @character.speed, strength: @character.strength, wisdom: @character.wisdom } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference("Character.count", -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
