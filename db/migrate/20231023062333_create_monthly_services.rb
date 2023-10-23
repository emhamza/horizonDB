class CreateMonthlyServices < ActiveRecord::Migration[7.0]
  def change
    create_table :monthly_services do |t|
      t.string :name
      t.string :month
      t.decimal :annual_total

      t.timestamps
    end
  end
end
