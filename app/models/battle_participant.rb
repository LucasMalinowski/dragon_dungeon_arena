# == Schema Information
#
# Table name: battle_participants
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  battle_id    :bigint           not null
#  character_id :bigint           not null
#
# Indexes
#
#  index_battle_participants_on_battle_id     (battle_id)
#  index_battle_participants_on_character_id  (character_id)
#
# Foreign Keys
#
#  fk_rails_...  (battle_id => battles.id)
#  fk_rails_...  (character_id => characters.id)
#
class BattleParticipant < ApplicationRecord
  belongs_to :battle
  belongs_to :character
end
