# frozen_string_literal: true

# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  current_hp :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sheet_id   :bigint           not null
#
# Indexes
#
#  index_characters_on_sheet_id  (sheet_id)
#
# Foreign Keys
#
#  fk_rails_...  (sheet_id => sheets.id)
#
class Character < ApplicationRecord
  belongs_to :sheet

  has_many :battle_participants
  has_many :battles, through: :battle_participants

  after_create :set_current_hp
  before_create :create_sheet

  # delegate all attributes from sheet to character
  delegate :avatar, :name, :level, :experience, :hp, :armor_class, to: :sheet

  def set_current_hp
    self.current_hp = hp + constitution.to_i
    save
  end

  def create_sheet
    self.sheet = Sheet.create
  end

  def attack_damage
    1 + strength / 2.to_i
  end
end
