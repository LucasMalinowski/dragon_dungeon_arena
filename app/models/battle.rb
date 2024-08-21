# frozen_string_literal: true

# == Schema Information
#
# Table name: battles
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Battle < ApplicationRecord
  include BattlesHelper
  has_many :battle_participants
  has_many :characters, through: :battle_participants

  def start_battle
    p 'Battle is starting'
    character_1 = characters.first
    character_2 = characters.second
    loop do
      attack(character_1, character_2)
      break if character_2.current_hp <= 0

      attack(character_2, character_1)
      break if character_1.current_hp <= 0
    end
    p 'Battle is over'
    p "#{character_1.name} has #{character_1.current_hp} hp left"
    p "#{character_2.name} has #{character_2.current_hp} hp left"
    p 'Winner is: ' + (character_1.current_hp.positive? ? character_1.name : character_2.name)
  end

  def reset_hp
    characters.each(&:set_current_hp)
  end

  def attack(attacker, defender)
    damage = attacker.attack_damage
    deal_damage(defender, damage)
  end

  def deal_damage(character, damage)
    character.current_hp -= damage
    character.save
    p "#{character.name} has #{character.current_hp} hp left"
  end

  def heal(amount)
    sheet.hp += amount
    p sheet.hp
    save
  end
end
