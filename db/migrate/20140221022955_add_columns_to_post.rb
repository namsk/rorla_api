class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string,	:null => false, :default => ''
    add_column :posts, :content, :text, :null => false, :default => ''
    add_column :posts, :hit, :integer,	:null => false, :default => 0
  end
end
