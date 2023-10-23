class AddNewColumnToMonthlyServices < ActiveRecord::Migration[7.0]
  def change
    add_column :monthly_services, :user_id, :integer
  end
end
