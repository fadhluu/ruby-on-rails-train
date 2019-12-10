# frozen_string_literal: true

class RemoveUsersPasswordColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :password
  end
end
