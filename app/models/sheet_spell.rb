# == Schema Information
#
# Table name: sheet_spells
#
#  id         :bigint           not null, primary key
#  sheet_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sheet_spells_on_sheet_id  (sheet_id)
#
# Foreign Keys
#
#  fk_rails_...  (sheet_id => sheets.id)
#
class SheetSpell < ApplicationRecord
  belongs_to :sheet
  has_many :spells, dependent: :destroy
end
