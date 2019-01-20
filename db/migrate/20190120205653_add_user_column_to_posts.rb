class AddUserColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  end
  def up 
    execute 'DELETE FROM posts'
    add_column　:user, null: false
  end

  def down
    remove_column :user
  end
end
