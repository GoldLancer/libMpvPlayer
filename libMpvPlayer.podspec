
Pod::Spec.new do |spec|

  spec.name         = 'libMpvPlayer'
  spec.version      = '1.0'
  spec.summary      = 'libMpvPlayer is a video player view based mpv.'

  spec.homepage     = 'https://github.com/GoldLancer/libMpvPlayer'
  spec.license      = 'MIT'
  spec.author       = { 'Anton Yagov' => 'goldlancer109@outlook.com' }
  spec.platform     = :ios, '13.0'
  spec.ios.deployment_target = '9.0'
  spec.source       = { :git => 'https://github.com/GoldLancer/libMpvPlayer.git', :tag => 'master' }
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  spec.requires_arc = true  
  spec.source_files = 'libMpvPlayer/*.{h,m}'
  spec.libraries    = 'c++', 'c', 'c++abi', 'iconv', 'bz2', 'z'
  spec.xcconfig = { 
                      'LIBRARY_SEARCH_PATHS' => '"${PROJECT_DIR}/.."/**'
                   }
  spec.cocoapods_version = '>= 1.4.0'

end
