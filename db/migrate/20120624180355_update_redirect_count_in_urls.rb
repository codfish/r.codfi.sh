class UpdateRedirectCountInUrls < ActiveRecord::Migration
  def up
  	change_column :urls, :redirect_count, :integer, :default => 0, :null => false
  end

  def down
  end
end
