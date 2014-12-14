class FillCommentModel < ActiveRecord::Migration
  def change
    add_reference :comments, :author, index: true
    add_reference :comments, :post, index: true

    add_column :comments, :body, :text
  end
end
