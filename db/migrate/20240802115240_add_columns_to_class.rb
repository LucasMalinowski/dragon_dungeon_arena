class AddColumnsToClass < ActiveRecord::Migration[7.1]
  def change
    add_column :classes, :hit_die, :integer
    add_column :classes, :primary_ability, :string
    add_column :classes, :saving_throws, :text
    add_column :classes, :armor_proficiencies, :text
    add_column :classes, :weapon_proficiencies, :text
    add_column :classes, :skill_proficiencies, :text
  end
end
