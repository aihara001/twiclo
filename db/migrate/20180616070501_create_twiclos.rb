class CreateTwiclos < ActiveRecord::Migration[5.1]
  def change
    create_table :twiclos do |t|
      t.text :content
      t.references :user

    end
  end
end
