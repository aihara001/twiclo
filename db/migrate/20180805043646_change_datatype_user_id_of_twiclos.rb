class ChangeDatatypeUserIdOfTwiclos < ActiveRecord::Migration[5.1]
  def change
    change_column :twiclos, :user_id, :integer
  end
end
