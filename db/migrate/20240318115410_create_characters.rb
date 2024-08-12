class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :hp
      t.integer :mana
      t.integer :action_points
      t.integer :extra_action_points
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armor_class
      t.integer :initiative
      t.float :speed
      t.integer :level
      t.float :experience

      t.timestamps
    end
  end
end
