class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :topic
  has_many :comments, dependent: :destroy

  validates_presence_of :title, :body, :topic

  enum status: {
    draft: 0,
    published: 1,
  }

  scope :recent, -> { order(created_at: :desc) }
end
