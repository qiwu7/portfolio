class Project < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_default

  def set_default
    self.main_image ||= "https://placehold.it/600x400"
    self.thumb_image ||= "https://placehold.it/350x200"
  end
end
