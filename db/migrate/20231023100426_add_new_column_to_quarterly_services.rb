class AddNewColumnToQuarterlyServices < ActiveRecord::Migration[7.0]
  def change
    add_column :quarterly_services, :user_id, :integer
  end
end
