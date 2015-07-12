module ApplicationHelper
  def nav_li name, url, options={}
    content_tag :li, link_to(name, url, options)
  end
end
