class AddSlugToShares < ActiveRecord::Migration[6.0]
  def change
    add_column :shares, :slug, :string
    add_index :shares, :slug, unique: true
  end
end
