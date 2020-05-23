
Pod::Spec.new do |spec|

  spec.name         = "libMpvPlayer"
  spec.version      = "1.0.0"
  spec.summary      = "libMpvPlayer is a video player view based mpv."

  spec.homepage     = "https://github.com/GoldLancer/libMpvPlayer"
  spec.license      = "MIT"
  spec.author             = { "Anton Yagov" => "goldlancer109@outlook.com" }
  spec.source       = { :git => "https://github.com/GoldLancer/libMpvPlayer.git", :tag => s.version.to_s }

  spec.platform     = :ios
  spec.ios.deployment_target = '13.0'
  spec.requires_arc = true
  spec.framework    = 'UIKit'
  spec.source_files = 'libMpvPlayer/*.{h,m}'
  spec.cocoapods_version = '>= 1.4.0'

end
