class CreateBiannualServices < ActiveRecord::Migration[7.0]
  def change
    create_table :biannual_services do |t|
      t.string :name
      t.string :biannual_span
      t.integer :annual_total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
