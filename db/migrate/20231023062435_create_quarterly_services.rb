class CreateQuarterlyServices < ActiveRecord::Migration[7.0]
  def change
    create_table :quarterly_services do |t|
      t.string :name
      t.string :quarterly
      t.decimal :annual_total

      t.timestamps
    end
  end
end
