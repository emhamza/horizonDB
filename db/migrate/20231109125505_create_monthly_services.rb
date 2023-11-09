class CreateMonthlyServices < ActiveRecord::Migration[7.0]
  def change
    create_table :monthly_services do |t|
      t.string :name
      t.string :month
      t.integer :annual_total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
