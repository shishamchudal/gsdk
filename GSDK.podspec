Pod::Spec.new do |s|
  s.name             = 'GSDK'
  s.version          = '0.0.8'
  s.summary          = 'A Bluetooth printing SDK for iOS.'
  s.description      = 'GSDK allows printing to Bluetooth thermal printers from iOS.'
  s.homepage         = 'https://github.com/shishamchudal/gsdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your@email.com' }
  s.source           = { :git => 'https://github.com/shishamchudal/gsdk.git', :tag => '0.0.8' }

  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.source_files = 'GSDK/**/*.{h,m}'

  s.frameworks = 'CoreBluetooth', 'Foundation', 'UIKit'
end
