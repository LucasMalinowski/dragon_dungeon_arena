class RecreateCharacter < ActiveRecord::Migration[7.1]
  def change
    drop_table :characters
    create_table :characters do |t|
      t.references :sheet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
