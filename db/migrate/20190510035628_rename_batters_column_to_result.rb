class RenameBattersColumnToResult < ActiveRecord::Migration[5.2]
  def change
    rename_column :results, :batters_id, :batter_id
  end
end
