#
# Be sure to run `pod lib lint podtest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'podtest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of podtest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hyj1989/podtest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hyj1989' => 'pearf63@163.com' }
  s.source           = { :git => 'https://github.com/hyj1989/testpod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'podtest/Classes/**/*'
  
  # 使用静态库模式 (否则 TencenOpenAPI 的文件链接不到)
  s.static_framework = true
  
  s.swift_version = ‘4.0'
  #在spec中设置

  
  # 依赖了 lib 库，这里需要设置 other_ldflags 为 -ObjC，否则加载 crash
#  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }

  # TencentSDK
  s.subspec 'TencentSDK' do |ss|
      ss.vendored_frameworks = 'podtest/Classes/Third/TencentOpenAPI.framework'
      #     ss.ios.source_files        = 'YWLogin/Classes/LoginSDK/TencentSDK/TencentOpenAPI.framework/Headers/*.h'
      #     ss.ios.public_header_files = 'YWLogin/Classes/LoginSDK/TencentSDK/TencentOpenAPI.framework/Headers/*.h'
      
      # 依赖库
      ss.frameworks = 'SystemConfiguration'
  end

  
  # s.resource_bundles = {
  #   'podtest' => ['podtest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
