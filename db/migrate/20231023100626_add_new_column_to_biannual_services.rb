class AddNewColumnToBiannualServices < ActiveRecord::Migration[7.0]
  def change
    add_column :biannual_services, :user_id, :integer
  end
end
