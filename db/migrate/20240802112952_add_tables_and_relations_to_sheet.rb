class AddTablesAndRelationsToSheet < ActiveRecord::Migration[7.1]
  def change
    # Remove specified columns from sheets
    remove_column :sheets, :charisma, :integer
    remove_column :sheets, :constitution, :integer
    remove_column :sheets, :dexterity, :integer
    remove_column :sheets, :initiative, :integer
    remove_column :sheets, :intelligence, :integer
    remove_column :sheets, :speed, :integer
    remove_column :sheets, :strength, :integer
    remove_column :sheets, :wisdom, :integer
    remove_column :sheets, :mana, :integer
    remove_column :sheets, :extra_action_points, :integer
    remove_column :sheets, :action_points, :integer

    # Add new columns to sheets
    add_column :sheets, :max_hp, :integer
    add_column :sheets, :temp_hp, :integer
    add_column :sheets, :current_hp, :integer
    add_column :sheets, :movement_speed, :integer
    add_column :sheets, :personality_traits, :text
    add_column :sheets, :ideals, :text
    add_column :sheets, :bonds, :text
    add_column :sheets, :flaws, :text
    add_column :sheets, :death_saves, :text
    add_column :sheets, :currency, :text
    add_column :sheets, :notes, :text
    add_column :sheets, :proficiency_bonus, :integer
    add_column :sheets, :spell_slots, :text
    add_column :sheets, :age, :integer
    add_column :sheets, :height, :string
    add_column :sheets, :weight, :string
    add_column :sheets, :eyes, :string
    add_column :sheets, :skin, :string
    add_column :sheets, :allies, :text
    add_column :sheets, :organizations, :text
    add_column :sheets, :character_story, :text
    add_column :sheets, :alignment, :string
    add_column :sheets, :inspiration_points, :integer

    # Create sheet_inventory table
    create_table :sheet_inventories do |t|
      t.references :sheet, null: false, foreign_key: true
      t.timestamps
    end

    # Create sheet_spells table
    create_table :sheet_spells do |t|
      t.references :sheet, null: false, foreign_key: true
      t.timestamps
    end

    # Create sheet_attributes table
    create_table :sheet_attributes do |t|
      t.references :sheet, null: false, foreign_key: true
      t.timestamps
    end

    # Create sheet_skills table
    create_table :sheet_skills do |t|
      t.references :sheet, null: false, foreign_key: true
      t.timestamps
    end

    # Create backgrounds table
    create_table :backgrounds do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    # Create classes table
    create_table :classes do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    # Create races table
    create_table :races do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    # Create languages table
    create_table :languages do |t|
      t.string :name
      t.timestamps
    end

    # Add foreign key relations to sheets
    add_reference :sheets, :background, foreign_key: true
    # foreing_key: 'classes_id' is used to specify the foreign key column name
    add_reference :sheets, :classes, foreign_key: true
    add_reference :sheets, :race, foreign_key: true

    # Create a join table for sheets and languages
    create_join_table :sheets, :languages do |t|
      t.index :sheet_id
      t.index :language_id
    end
  end
end
