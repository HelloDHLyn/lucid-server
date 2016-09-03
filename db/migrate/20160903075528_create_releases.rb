class CreateReleases < ActiveRecord::Migration[5.0]
  def change
    create_table :releases do |t|
      t.boolean :is_latest
      t.boolean :is_release
      t.integer :version_code
      t.string :version_name
      t.text :path
      t.integer :applicaton_id

      t.timestamps
    end
  end
end
