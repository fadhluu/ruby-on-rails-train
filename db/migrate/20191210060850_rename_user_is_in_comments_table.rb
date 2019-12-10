class RenameUserIsInCommentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_is, :user_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
