class AddDurationToShares < ActiveRecord::Migration[6.0]
  def change
    add_column :shares, :duration, :integer, null: false
  end
end
