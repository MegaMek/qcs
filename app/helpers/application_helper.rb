# frozen_string_literal: true

# Application Wide View Helpers
module ApplicationHelper
  # Accepts a string for the title of a page
  #
  # @param page_title [String] Title for the current page
  def title(page_title)
    content_for :title, page_title.to_s
  end
end
