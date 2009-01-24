require 'redmine'

require 'mobile_layout_hook'

Redmine::Plugin.register :redmine_mobile do
  name 'Mobile plugin'
  author 'Eric Davis'
  url 'https://projects.littlestreamsoftware.com/projects/show/redmine-mobile'
  author_url 'http://www.littlestreamsoftware.com'
  description "A Redmine plugin to provide simpler views for mobile users"
  version '0.1.0'

  requires_redmine :version_or_higher => '0.8.0'
end
