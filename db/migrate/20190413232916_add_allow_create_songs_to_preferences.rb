class AddAllowCreateSongsToPreferences < ActiveRecord::Migration[5.2]
  def change
    add_column :preferences, :allow_create_songs, :boolean
  end
end
