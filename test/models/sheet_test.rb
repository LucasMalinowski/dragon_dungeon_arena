# == Schema Information
#
# Table name: sheets
#
#  id                 :bigint           not null, primary key
#  age                :integer
#  alignment          :string
#  allies             :text
#  armor_class        :integer
#  bonds              :text
#  character_story    :text
#  currency           :text
#  current_hp         :integer
#  death_saves        :text
#  experience         :float
#  eyes               :string
#  flaws              :text
#  height             :string
#  hp                 :integer
#  ideals             :text
#  inspiration_points :integer
#  level              :integer
#  max_hp             :integer
#  movement_speed     :integer
#  name               :string
#  notes              :text
#  organizations      :text
#  personality_traits :text
#  proficiency_bonus  :integer
#  skin               :string
#  spell_slots        :text
#  temp_hp            :integer
#  weight             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  background_id      :bigint
#  classes_id         :bigint
#  race_id            :bigint
#  user_id            :bigint           not null
#
# Indexes
#
#  index_sheets_on_background_id  (background_id)
#  index_sheets_on_classes_id     (classes_id)
#  index_sheets_on_race_id        (race_id)
#  index_sheets_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (background_id => backgrounds.id)
#  fk_rails_...  (classes_id => classes.id)
#  fk_rails_...  (race_id => races.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class SheetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
