class AddStatusToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :status, :string
  end
end
