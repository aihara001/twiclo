class AddColumnToTwiclo < ActiveRecord::Migration[5.1]
  def change
    add_column :twiclos, :image, :text
  end
end
