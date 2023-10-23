class CreateCommissionedBies < ActiveRecord::Migration[7.0]
  def change
    create_table :commissioned_bies do |t|
      t.string :name

      t.timestamps
    end
  end
end
