Pod::Spec.new do |s|
  s.name             = 'GSDK'
  s.version          = '0.0.7'
  s.summary          = 'A Bluetooth printing SDK for iOS.'
  s.description      = 'GSDK allows printing to Bluetooth thermal printers from iOS.'
  s.homepage         = 'https://github.com/shishamchudal/gsdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your@email.com' }
  s.source           = { :git => 'https://github.com/shishamchudal/gsdk.git', :tag => '0.0.7' }

  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.source_files = 'GSDK/**/*.{h,m}'
  s.public_header_files = 'GSDK/**/*.h'   # Explicitly declare public headers
  s.module_name = 'GSDK'                   # Declare this pod as a module
  s.frameworks = 'CoreBluetooth', 'Foundation', 'UIKit'

  # Enable module support and allow non-modular includes inside framework modules
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
