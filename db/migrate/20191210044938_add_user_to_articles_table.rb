class AddUserToArticlesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :creator, :string
  end
end
