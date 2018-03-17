class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  enum status: {
    draft: 0,
    published: 1,
  }
end
