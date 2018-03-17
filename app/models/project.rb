class Project < ApplicationRecord
  includes Placeholder

  has_many :technologies

  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_default

  def set_default
    self.main_image ||= Placeholder.image_generator(height: "600", width: "400")
    self.thumb_image ||= Placeholder.image_generator(height: "350", width: "200")
  end
end
