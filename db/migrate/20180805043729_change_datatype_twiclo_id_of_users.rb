class ChangeDatatypeTwicloIdOfUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :twiclo_id, :integer
  end
end
