

Pod::Spec.new do |s|


  s.name         = "CConvenient"
  s.version      = "0.0.1"
  s.summary      = "A convenient way to handle UI."
  s.homepage     = "https://github.com/CCloudTang/CConvenient"
  s.license      = "MIT"
  s.author = "CloudTang"
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/CCloudTang/CConvenient.git", :tag => s.version }

  s.source_files  = "CConvenient/*.{h,m}"
  s.requires_arc = true


end
