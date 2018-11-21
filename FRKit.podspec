Pod::Spec.new do |s|
  s.name         = "FRKit"
  s.version      = "0.0.8"
  s.platform       = :ios, "9.0"
  s.summary      = "iOS开发基础组件库"
  s.description  = <<-DESC
                    iOS开发基础组件库，主要包含以下内容：
                    1、shortcut: 通用宏
                    2、Categories：通用类拓展
                    2、Functional：通用View控件
                    DESC
  s.author        = { "Qmeanl" => "a654543430@126.com" }
  s.homepage     = "https://github.com/Qmeanl/FRKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.source       = { :git => "https://github.com/Qmeanl/FRKit.git", :tag =>s.version }
  s.public_header_files = "FRKit/FRKit.h"
  s.source_files = "FRKit/FRKit.h"

  # 通用宏定义、快捷方法
  s.subspec 'FRShortcut' do |shortcut|
    shortcut.source_files = "FRKit/FRShortcut/*.{h,m}"
  end

 # 基础控件
  s.subspec 'FRFunctional' do |founc|
    founc.public_header_files = "FRKit/FRFunctional/FRFunctional.h"
    founc.source_files = "FRKit/FRFunctional/FRFunctional.h"

    # FRActionSheet
    founc.subspec 'FRActionSheet' do |ss|
      ss.source_files = "FRKit/FRFunctional/FRActionSheet/*.{h,m}"
      ss.dependency "FRKit/FRCategories/UIKit/UIImage"
    end

    # FRUIUtility
    founc.subspec 'FRUIUtility' do |ss|
      ss.source_files = "FRKit/FRFunctional/FRUIUtitlity/*.{h,m}"
      ss.dependency "FRKit/FRCategories/UIKit/UIWindow"
    end

  end


 # 通用宏定义、快捷方法
  s.subspec 'FRCategories' do |categories|
    categories.public_header_files = "FRKit/FRCategories/FRCategories.h"
    categories.source_files = "FRKit/FRCategories/FRCategories.h"

     # UIKit
     categories.subspec 'UIKit' do |uikit|
       uikit.public_header_files = 'FRKit/FRCategories/UIKit/UIKit+FRCategories.h'
       uikit.source_files = 'FRKit/FRCategories/UIKit/UIKit+FRCategories.h'

       # UIWindow
        uikit.subspec 'UIWindow' do |ss|
          ss.source_files = "FRKit/FRCategories/UIKit/UIWindow/*.{h,m}"
        end

       # UIImage
         uikit.subspec 'UIImage' do |ss|
          ss.source_files = "FRKit/FRCategories/UIKit/UIImage/*.{h,m}"
         end
     end


  end

end