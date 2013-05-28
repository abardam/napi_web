class RemovePostContentLimit < ActiveRecord::Migration
  def up
    change_column :contents, :post, :text, :limit => nil
  end

  def down
    change_column :contents, :post, :text, :limit => 255
  end
end
