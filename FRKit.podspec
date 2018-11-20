

Pod::Spec.new do |s|
  s.name         = "FRKit"
  s.version      = "0.0.1"
  s.platform = :ios, "8.0"
  s.summary      = "iOS开发基础组件库"
  s.description  = <<-DESC
                    iOS开发基础组件库，主要包含以下内容：
                    1、shortcut: 通用宏
                    2、Categories：通用类拓展
                    2、Functional：通用View控件
                    DESC

  s.author        = { "huangxiaohua" => "a654543430@126.com" }
  s.homepage     = "https://github.com/Qmeanl/FRKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.source       = { :git => "https://github.com/Qmeanl/FRKit.git", :tag => s.version }
  s.public_header_files = "FRKit/FRKit.h"
  s.source_files = "FRKit/FRKit.h"
end
