Pod::Spec.new do |spec|
  spec.name         = "libGSDK"
  spec.version      = "1.0.0"
  spec.summary      = "libGSDK for Flutter iOS Bluetooth Printing"
  spec.description  = <<-DESC
                      Custom GSDK library integration for Flutter Bluetooth printing on iOS.
                     DESC
  spec.homepage     = "https://github.com/shishamchudal/gsdk"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Shisham Chudal" => "your@email.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/shishamchudal/gsdk.git", :tag => "#{spec.version}" }

  # Source files
  spec.source_files  = "GSDK/**/*.{h,m}"
  spec.public_header_files = "GSDK/**/*.h"

  # Framework dependencies
  spec.frameworks = 'UIKit', 'Foundation', 'CoreBluetooth', 'ExternalAccessory'

  # Allow non-modular headers in module
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

  # ARC support
  spec.requires_arc = true
end
