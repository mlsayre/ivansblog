class AddIndexToComments < ActiveRecord::Migration
  def change
    add_index :comments, :post_id, :name => 'post_id_ix'
  end
end
