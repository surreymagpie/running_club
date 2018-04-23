module ApplicationHelper
  def page_title(title)
    if title.blank?
      app_name
    else
      title + ' | ' + app_name
    end
  end

  def app_name
    ENV['SITE_NAME'] || Rails.application.class.parent.to_s.titleize
  end
end
