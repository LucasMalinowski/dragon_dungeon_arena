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
require "test_helper"

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
