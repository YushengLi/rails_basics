module ApplicationHelper
  def nav_li name, url
    content_tag :li, link_to(name, url)
  end
end
