module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  protected

  def set_page_defaults
    @page_title = "Qi | Portfolio Website"
  end

end