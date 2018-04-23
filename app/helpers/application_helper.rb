module ApplicationHelper
  def page_title(title)
    if title.blank?
      app_name
    else
      title + ' | ' + app_name
    end
  end

  def app_name
    Rails.application.class.parent.to_s.titleize
  end
end
