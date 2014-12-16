class AddLayoutToUser < ActiveRecord::Migration
  def change
    add_column :users, :layout, :string
  end
end
