class CreateQuarterlyServices < ActiveRecord::Migration[7.0]
  def change
    create_table :quarterly_services do |t|
      t.string :name
      t.string :quarterly
      t.integer :annual_total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
