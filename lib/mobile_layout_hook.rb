class MobileLayoutHook < Redmine::Hook::ViewListener

  def view_layouts_base_html_head(context = { })
    # stylesheet_link_tag "mobile.css", :plugin => "redmine_mobile", :media => "screen"
  end
end
