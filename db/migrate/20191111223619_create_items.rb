class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :condition
      t.string :description
      t.integer :location_id
      t.string :image_url
      t.string :address
      t.integer :quantity

      t.timestamps
    end
  end
end
