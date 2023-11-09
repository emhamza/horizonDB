class DropSpaServicesTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :spa_services
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
