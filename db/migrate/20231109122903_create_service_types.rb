class CreateServiceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :service_types do |t|
      t.string :name
      t.string :category
      t.integer :default_rate
      t.string :frequency
      t.string :target
      t.string :integer
      t.references :user, null: false, foreign_key: true
      t.references :commissioned, null: false, foreign_key: true

      t.timestamps
    end
  end
end
