class RemoveIntegerFromServiceTypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_types, :integer, :string
  end
end
