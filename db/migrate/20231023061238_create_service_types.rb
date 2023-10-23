class CreateServiceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :service_types do |t|
      t.string :name
      t.string :category
      t.decimal :default_rate
      t.string :frequency
      t.integer :target
      t.integer :commissioned_by_id

      t.timestamps
    end
  end
end
