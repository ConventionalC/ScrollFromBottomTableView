Pod::Spec.new do |s|
  s.name         = "ScrollFromBottomTableView"
  s.version      = '0.1'
  s.summary      = "Cocoapod and framework to make scroll views scroll from the bottom like they can in messaging app."
  s.homepage     = "http://github.com/ConventionalC/ScrollFromBottomTableView"
  s.license      = 'MIT'
  s.author       = { "Peter DeWeese" => "peter@dewee.se" }
  s.source       = { :git => "https://github.com/ConventionalC/ScrollFromBottomTableView.git", :tag => '0.1' }
  s.requires_arc = true

  s.ios.source_files = 'ScrollFromBottomTableView/*.{m,h}'
  s.ios.deployment_target = '7.1'
  s.ios.frameworks = 'Foundation', 'UIKit'
end
