class CreateBattleParticipants < ActiveRecord::Migration[7.1]
  def change
    create_table :battle_participants do |t|
      t.references :battle, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
