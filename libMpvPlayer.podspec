
Pod::Spec.new do |spec|

  spec.name         = "libMpvPlayer"
  spec.version      = "1.0.0"
  spec.summary      = "libMpvPlayer is a video player view based mpv."

  spec.homepage     = "https://github.com/GoldLancer/libMpvPlayer"
  spec.license      = "MIT"
  spec.author             = { "Anton Yagov" => "goldlancer109@outlook.com" }
  spec.source       = { :git => "https://github.com/GoldLancer/libMpvPlayer.git", :tag => s.version.to_s }

  s.platform     = :ios
  s.ios.deployment_target = '13.0'
  s.requires_arc = true
  s.framework    = 'UIKit'
  s.source_files = 'Sources/*.{swift,h,m}'
  s.cocoapods_version = '>= 1.4.0'

end
