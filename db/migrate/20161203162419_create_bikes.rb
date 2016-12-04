class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :bikename
      t.string :bikemodel
      t.string :biketype
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
