class CreateBiannualServices < ActiveRecord::Migration[7.0]
  def change
    create_table :biannual_services do |t|
      t.string :name
      t.string :year
      t.decimal :annual_total

      t.timestamps
    end
  end
end
