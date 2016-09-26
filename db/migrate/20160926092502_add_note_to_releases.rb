class AddNoteToReleases < ActiveRecord::Migration[5.0]
  def change
    add_column :releases, :release_note, :text, null: false, default: ''
  end
end
