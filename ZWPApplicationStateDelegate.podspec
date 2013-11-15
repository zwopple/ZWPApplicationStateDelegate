Pod::Spec.new do |s|
  s.name = "ZWPApplicationStateDelegate"
  s.summary = "Utility to make monitoring and animating with the keyboard state easier!"
  
  s.version = "1.0.0"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.homepage = "https://github.com/zwopple/ZWPKeyboardDelegate"
  s.author = { "Zwopple | Creative Software" => "support@zwopple.com" }
  s.ios.deployment_target = "6.0"
  s.source = { :git => "https://github.com/zwopple/ZWPApplicationStateDelegate.git", :tag => "1.0.0" }
  s.requires_arc = true
  s.source_files = "ZWPApplicationStateDelegate/"
  s.frameworks = "UIKit"
  
end