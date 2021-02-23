class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.text :description
      t.float :price
      t.references :neighborhood, foreign_key: true
      t.integer :host_id

      t.timestamps
    end
  end
end
