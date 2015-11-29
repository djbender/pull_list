module ApplicationHelper
  def notice_with_title(class_name, title)
    "Successfully created #{class_name.downcase}: #{title}"
  end
end
