class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :reservation, foreign_key: true
      t.integer :guest_id

      t.timestamps
    end
  end
end
