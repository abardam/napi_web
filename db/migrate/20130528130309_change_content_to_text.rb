class ChangeContentToText < ActiveRecord::Migration
  def up
    change_column :contents, :post, :text
  end

  def down
    change_column :contents, :post, :string
  end
end
