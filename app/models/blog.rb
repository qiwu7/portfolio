class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :topic, optional: true
  has_many :comments, dependent: :destroy

  validates_presence_of :title, :body

  enum status: {
    draft: 0,
    published: 1,
  }
end
