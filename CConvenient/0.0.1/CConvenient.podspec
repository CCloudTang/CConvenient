

Pod::Spec.new do |s|


  s.name         = "CConvenient"
  s.version      = "0.0.1"
  s.summary      = "A convenient way to handle UI."


  s.homepage     = "https://github.com/CCloudTang/CConvenient"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"



  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  #s.author             = { "" => "" }
  s.author = "CloudTang"

  # s.platform     = :ios
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/CCloudTang/CConvenient.git", :tag => s.version }

  s.source_files  = "CConvenient","CConvenient/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"



  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
