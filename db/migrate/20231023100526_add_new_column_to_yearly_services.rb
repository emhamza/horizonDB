class AddNewColumnToYearlyServices < ActiveRecord::Migration[7.0]
  def change
    add_column :yearly_services, :user_id, :integer
  end
end
