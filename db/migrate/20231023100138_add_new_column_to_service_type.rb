class AddNewColumnToServiceType < ActiveRecord::Migration[7.0]
  def change
    add_column :service_types, :user_id, :integer
  end
end
