Pod::Spec.new do |s|
    s.name         = "pai-iOS"
    s.version      = "5.3.8"
    s.summary      = "Marketing Campaign manager"
    s.description  = <<-DESC
	- A new delegate is added to notify app when Firebase finishes configuration
    - Allow the containing app and its notification extension to share the same CoreData storage
    - Deprecate some methods
    - Remove version restriction on Firebase APIs dependency
    - Improve SDK startup process performance
    DESC
    s.homepage     = "https://wiki.mypaytm.com/display/MAP/pai-iOS+Push+SDK+Integration"
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author             = { 'Annie Yang' => 'annie.yang@paytm.com' }
    s.source       = { :git => 'https://github.com/midgardev/pai-iOS.git', :tag => s.version.to_s }
    s.public_header_files = "pai.framework/Headers/*.h"
    s.source_files = "pai.framework/Headers/*.h"
    s.vendored_frameworks = "pai.framework"
    s.platform = :ios
    s.swift_version = "4.0"
    s.ios.deployment_target  = '11.0'
    s.static_framework = true
    s.resource = "Resources.bundle"
    s.frameworks = 'CoreServices'
    s.dependency 'FirebaseCore'
    s.dependency 'FirebaseMessaging'
    s.dependency 'FirebaseCrashlytics'
    s.dependency 'DataCompression', '3.1.0'

end
