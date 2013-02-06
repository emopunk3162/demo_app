class AddUserRelation < ActiveRecord::Migration
  def up
  	add_column :posts, :user_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :post_id, :integer
  end

  def down
  end
end
