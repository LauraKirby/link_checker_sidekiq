class AddWebsiteIdToLink < ActiveRecord::Migration
  def change
    add_column :links, :website_id, :integer
  end
end
