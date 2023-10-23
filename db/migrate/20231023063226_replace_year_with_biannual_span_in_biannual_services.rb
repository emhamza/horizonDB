class ReplaceYearWithBiannualSpanInBiannualServices < ActiveRecord::Migration[7.0]
  def change
    rename_column :biannual_services, :year, :biannual_span
  end
end
