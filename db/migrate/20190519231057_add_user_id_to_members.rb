class AddUserIdToMembers < ActiveRecord::Migration[5.1]
  def up
    execute 'DELETE FROM members;'
    add_reference :members, :user, null: false, index: true
  end

  def down
    remove_reference :members, :user, index: true
  end
end
