Pod::Spec.new do |s|
  s.name         = "FRKit"
  s.version      = "0.0.1"
  s.summary      = "iOS开发基础组件库"
  s.description  = <<-DESC
                    iOS开发基础组件库，主要包含以下内容：
                    1、shortcut: 通用宏
                    2、Categories：通用类拓展
                    2、Functional：通用View控件
                    DESC
   s.platform = :ios, "9.0"
  s.source       = { :git => "https://github.com/Qmeanl/FRKit.git", :tag =>"0.0.1" }
  s.source_files  = "FRKit", "FRKit/**/*.{h,m}"
end