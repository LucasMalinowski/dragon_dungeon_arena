class AddUserToSheets < ActiveRecord::Migration[7.1]
  def change
    add_reference :sheets, :user, null: false, foreign_key: true
  end
end
