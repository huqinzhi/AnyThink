Pod::Spec.new do |spec|
  spec.name         = "AnyThink"
  spec.version      = "5.3.2"
  spec.summary      = "A short description of AnyThink."
  spec.description  = <<-DESC
			this is my first test framework
                   DESC
  spec.homepage     = "https://github.com/huqinzhi/AnyThink"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "lemon" => "lemon@toponad.com" }
  spec.source       = { :git => "https://github.com/huqinzhi/AnyThink.git", :tag => spec.version }
  spec.platform     = :ios, '8.0'
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit','AdSupport','StoreKit','QuartzCore','CoreTelephony','MobileCoreServices','Accelerate','AVFoundation','WebKit'
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.libraries = 'c++', 'z', 'sqlite3', 'xml2'
  
  spec.default_subspecs = 'AnyThinkSDK'

  spec.subspec 'AnyThinkSDK' do |ss|
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThink/AnyThinkSDK/*.framework'
     ss.resource = 'AnyThink/AnyThinkSDK/AnyThinkSDK.bundle'
  end

  spec.subspec 'AnyThinkTTAdapter' do |ss|
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThink/AnyThinkTTAdapter/*.framework'
     ss.dependency 'AnyThink/AnyThinkSDK'
  end
  
  

end
