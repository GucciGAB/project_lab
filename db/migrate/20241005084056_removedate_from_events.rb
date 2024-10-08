class RemovedateFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :date, :datetime
  end
end
