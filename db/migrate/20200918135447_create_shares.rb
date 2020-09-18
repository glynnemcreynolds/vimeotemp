class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.string :video_code, null: false
      t.string :identifier, null: false

      t.timestamps

      t.index :identifier, unique: true
    end
  end
end
