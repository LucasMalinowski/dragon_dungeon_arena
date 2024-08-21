# == Schema Information
#
# Table name: backgrounds
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Background < ApplicationRecord
  has_many :sheets
end
