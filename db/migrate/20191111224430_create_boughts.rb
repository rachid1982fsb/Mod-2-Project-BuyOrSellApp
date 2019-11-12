class CreateBoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :boughts do |t|
      t.string :user_id
      t.string :item_id
      t.date :date
      t.string :note
      t.time :Pickup_time

      t.timestamps
    end
  end
end
