# frozen_string_literal: true

class Contact < ActiveRecord::Base
  validates :sosmed, presence: true
  validates :sosmed_username, presence: true
end
