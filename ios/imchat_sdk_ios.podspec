#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint imchat_sdk_ios.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'imchat_sdk_ios'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'
#s.static_framework = false
 # s.source = { :git => 'https://github.com/liloutest/imchat_sdk_native_ios.git'}
#s.dependency 'imchat', :git => 'https://github.com/liloutest/imchat_sdk_native_ios.git'
s.dependency 'AFNetworking','4.0.1'
s.dependency 'SocketRocket'
s.dependency 'Protobuf', '~> 3.19'
s.dependency 'SDWebImage'
s.dependency 'FMDB/SQLCipher'
s.dependency 'LKDBHelper'
#  pod 'Mantle'
s.dependency 'YYModel'
s.dependency 'TTTAttributedLabel'
#  pod 'PureLayout'
s.dependency 'Masonry'
s.dependency 'IQKeyboardManager'
s.dependency 'MJRefresh'
s.dependency 'TZImagePickerController/Basic'
s.dependency 'SVProgressHUD'
s.preserve_paths = [
'Framework/imchat.framework',
'Framework/imchat.framework/Headers/*'
]
s.vendored_frameworks = 'Framework/imchat.framework'
  # Flutter.framework does not contain a i386 slice.

s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' ,
'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
'CLANG_ENABLE_MODULES' => 'YES',
'OTHER_LDFLAGS' => '$(inherited) -framework "imchat" -ObjC -all_load'
}


end
