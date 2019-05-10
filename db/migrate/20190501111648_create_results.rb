class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :bats
      t.integer :hitting
      t.integer :homerun
      t.integer :point
      t.integer :steal
      t.integer :batters_id
      t.timestamps
    end
  end
end
