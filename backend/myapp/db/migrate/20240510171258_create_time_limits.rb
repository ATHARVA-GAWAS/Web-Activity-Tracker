class CreateTimeLimits < ActiveRecord::Migration[7.1]
  def change
    create_table :time_limits do |t|
      t.references :user, null: false, foreign_key: true
      t.string :website
      t.integer :time_limit

      t.timestamps
    end
  end
end
