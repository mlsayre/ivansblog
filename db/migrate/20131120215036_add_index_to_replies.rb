class AddIndexToReplies < ActiveRecord::Migration
  def change
    add_index :replies, :comment_id, :name => 'comment_id_ix'
  end
end
