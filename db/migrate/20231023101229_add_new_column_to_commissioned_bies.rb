class AddNewColumnToCommissionedBies < ActiveRecord::Migration[7.0]
  def change
    add_column :commissioned_bies, :user_id, :integer
  end
end
