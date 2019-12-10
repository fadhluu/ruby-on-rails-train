# frozen_string_literal: true

class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 10 }
  validates :status, presence: true
  validates :user_id, presence: true
  scope :status_active, -> { where(status: 'active') }

  # relationship
  has_many :comments, dependent: :destroy
  belongs_to :user, dependent: :delete
end
