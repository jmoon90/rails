class AddTempo < ActiveRecord::Migration
  class Song < ActiveRecord::Base; end;

  def up
    add_column :songs, :tempo, :integer
    Song.update_all tempo: 90
  end

  def down
    remove_column :songs, :tempo
  end
end
