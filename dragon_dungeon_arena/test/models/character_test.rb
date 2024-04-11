# == Schema Information
#
# Table name: characters
#
#  id                  :bigint           not null, primary key
#  action_points       :integer
#  armor_class         :integer
#  charisma            :integer
#  constitution        :integer
#  dexterity           :integer
#  experience          :float
#  extra_action_points :integer
#  hp                  :integer
#  initiative          :integer
#  intelligence        :integer
#  level               :integer
#  mana                :integer
#  name                :string
#  speed               :float
#  strength            :integer
#  wisdom              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require "test_helper"

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
