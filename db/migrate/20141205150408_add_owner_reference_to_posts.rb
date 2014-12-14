class AddOwnerReferenceToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :owner, index: true
  end
end
