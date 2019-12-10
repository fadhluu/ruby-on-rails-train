# frozen_string_literal: true

class Comment < ActiveRecord::Base
  validates :content, presence: true
  validates :article_id, presence: true
  validates :user_is, presence: true
  # relationship
  belongs_to :article, dependent: :delete
end
