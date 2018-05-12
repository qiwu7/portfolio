class Project < ApplicationRecord
  mount_uploader :thumb_image, ProjectUploader
  mount_uploader :main_image, ProjectUploader

  has_many :technologies

  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs[:name].blank? }

  validates_presence_of :title, :body

  scope :by_position, -> { order(:position) }
end
