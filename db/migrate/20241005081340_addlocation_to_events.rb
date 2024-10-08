class AddlocationToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :Events, :location, :string
  end
end
