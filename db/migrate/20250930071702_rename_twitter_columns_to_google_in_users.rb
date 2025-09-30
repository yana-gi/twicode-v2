class RenameTwitterColumnsToGoogleInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :twitter_id, :google_id
    rename_column :users, :twitter_name, :google_name
    rename_column :users, :twitter_icon, :google_icon
  end
end
