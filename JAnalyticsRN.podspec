require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "JAnalyticsRN"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/easyspark/janalytics-react-native"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "huminios" => "380108184@qq.com" }

  s.ios.deployment_target = '7.0'

  s.source          = { :git => "https://github.com/easyspark/janalytics-react-native.git", :tag => "#{s.version}" }
  s.source_files    = 'ios/RCTJAnalyticsModule/*.{h,m}'
  s.preserve_paths  = "*.js"
  s.frameworks      = 'UIKit','CFNetwork','CoreFoundation','CoreTelephony','SystemConfiguration','CoreGraphics','Foundation','Security','CoreLocation'
  s.weak_frameworks = 'UserNotifications'
  s.libraries       = 'z','resolv'
  s.vendored_libraries = "ios/RCTJAnalyticsModule/*.a"
  s.dependency "JAnalytics", '2.1.2'
  s.dependency 'React'
end
