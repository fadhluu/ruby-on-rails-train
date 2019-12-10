# frozen_string_literal: true

class RenameAndChangeTypeCreatorFromArticlesTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :creator, :user_id
    change_column :articles, :user_id, :integer
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
