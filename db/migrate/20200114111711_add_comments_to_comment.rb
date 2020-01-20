class AddCommentsToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :comment_id, :bigint
    add_foreign_key :comments, :comments
  end
end
