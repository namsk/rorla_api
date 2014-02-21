class AddColumnsToComment < ActiveRecord::Migration
  def change
    add_column :comments, :content, :text, :null => false, :default => ''
    add_column :comments, :post_id, :integer
  end
end
