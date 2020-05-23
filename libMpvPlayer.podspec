
Pod::Spec.new do |spec|

  spec.name         = 'libMpvPlayer'
  spec.version      = '1.0'
  spec.summary      = 'libMpvPlayer is a video player view based mpv.'

  spec.homepage     = 'https://github.com/GoldLancer/libMpvPlayer'
  spec.license      = 'MIT'
  spec.author       = { 'Anton Yagov' => 'goldlancer109@outlook.com' }
  spec.platform     = :ios
  spec.source       = { :git => 'https://github.com/GoldLancer/libMpvPlayer.git', :tag => 'master' }


  spec.requires_arc = true
  spec.framework    = 'UIKit, AVFoundation, Accelerate, CoreMotion, VideoToolbox, GameController'
  spec.source_files = 'libMpvPlayer/*.{h,m}'
  spec.libraries = 'libMpvPlayer/Libraries/libmpv/lib/*.a', 'libMpvPlayer/Libraries/ios-arm64/**/lib/*.a' 
  spec.cocoapods_version = '>= 1.4.0'

end
