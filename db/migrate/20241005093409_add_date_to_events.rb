class AddDateToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :Events, :start_date, :string
    add_column :Events, :end_date, :string

  end
end
