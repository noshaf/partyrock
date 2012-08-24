class AddSongToParties < ActiveRecord::Migration
  def change
    add_column :parties, :song, :string
  end
end
