class AddCurrentHpToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :current_hp, :integer
  end
end
