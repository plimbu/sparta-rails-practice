module ApplicationHelper
#peter - added to help with header injection
  def header(text)
  content_for(:header) { text.to_s }
end
end
