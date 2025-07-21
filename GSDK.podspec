Pod::Spec.new do |spec|

  spec.name         = "GSDK"
  spec.version      = "0.0.7"
  spec.summary      = "iOS GSDK."
  spec.description  = <<-DESC
这是一个基于佳博打印系列的iOS打印SDK
  DESC

  spec.homepage     = "https://gitee.com/besthandset/gsdk.git"

  spec.author       = { "chenzijian" => "1195688960@qq.com" }

  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/shishamchudal/gsdk.git", :tag => "#{spec.version}" }

  spec.source_files  = "GSDK/**/*.{h,m}"
  spec.public_header_files = "GSDK/**/*.h"

  spec.frameworks = 'UIKit', 'Foundation', 'CoreBluetooth', 'ExternalAccessory'

  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

  spec.requires_arc = true

end
