class MobileLayoutHook < Redmine::Hook::ViewListener

  def view_layouts_base_html_head(context = { })
    agent = MobileUserAgent.detect(context[:request])
    stylesheet_link_tag MobileUserAgent.css(agent), :plugin => "redmine_mobile", :media => "screen" if agent
  end
end
