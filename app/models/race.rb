# == Schema Information
#
# Table name: races
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Race < ApplicationRecord
  has_many :sheets
end
