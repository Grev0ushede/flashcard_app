module ApplicationHelper

  #Returns full title based on pages
  def full_title(page_title = '')
    base_title = "Flashcard"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
