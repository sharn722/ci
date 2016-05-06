class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.integer :app_id
      t.string :commit_msg

      t.timestamps null: false
    end
  end
end
