class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :is_producer, :boolean, default: false
  	add_column :users, :username, :string, :limit => 20
  end
end
