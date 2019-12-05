# frozen_string_literal: true

class Comment < ActiveRecord::Base
  # relationship
  belongs_to :article, dependent: :delete
end
