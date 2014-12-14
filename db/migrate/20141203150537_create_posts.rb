class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.timestamps
      t.string :title, uniqueness: true
      t.text :body

    end
  end
end
