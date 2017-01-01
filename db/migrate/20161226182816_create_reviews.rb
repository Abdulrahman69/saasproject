class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :title
      t.integer :bike_id
      t.timestamps null: false
    end
  end
end
