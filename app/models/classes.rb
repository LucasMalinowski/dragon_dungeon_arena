# == Schema Information
#
# Table name: classes
#
#  id                   :bigint           not null, primary key
#  armor_proficiencies  :text
#  description          :text
#  hit_die              :integer
#  name                 :string
#  primary_ability      :string
#  saving_throws        :text
#  skill_proficiencies  :text
#  weapon_proficiencies :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Classes < ApplicationRecord
  has_many :sheets
end
