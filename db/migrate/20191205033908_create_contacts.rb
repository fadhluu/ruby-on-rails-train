# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :sosmed
      t.string :sosmed_username
      t.timestamps
    end
  end
end
