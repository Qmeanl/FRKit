Pod::Spec.new do |s|
  s.name         = "FRKit"
  s.version      = "0.0.1"
  s.summary      = "Redirecting Requests."
  s.description  = < "a654543430@126.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/Qmeanl/FRKit.git", :tag =>"0.0.1" }
  s.source_files  = "FRKit", "FRKit/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.framework  = "UIKit"
end