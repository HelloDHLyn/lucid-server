class AddDetailsToApplications < ActiveRecord::Migration[5.0]
  def change
  	add_column :applications, :icon, :string, null: false, default: ''
  	add_column :applications, :producer_id, :integer, null: false, default: -1
  end
end
