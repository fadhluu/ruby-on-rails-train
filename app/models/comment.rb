# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :content, presence: true
  validates :article_id, presence: true
  validates :user_id, presence: true
  # relationship
  belongs_to :article, dependent: :delete
  belongs_to :user, dependent: :delete
end
