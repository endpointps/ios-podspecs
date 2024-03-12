#
# Be sure to run `pod lib lint EngageUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EngageUI'
  s.version          = "1.0.5"
  s.summary          = 'UI framework for Engage Apps.'
  s.swift_version    = '5.0'

  s.description      = 'A modular library for implementing views in Engage apps.' 

  s.homepage         = 'https://www.engageft.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jeff Cedilla' => 'jeff.cedilla@engageft.com' }
  s.source           = { :git => "https://bitbucket.org/engageft/ios-engage-ui-framework.git", :tag => s.version.to_s}
  s.source_files = 'Source/**/*'
  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = "Frameworks/TrustDefender.framework"
  s.vendored_libraries = 'Source/Third\ Party\ Files/libHeap.a'
  s.prefix_header_contents = '#import <EngageUI/EngageUI-Swift.h>', '#import "NSString+Localized.h"'
  
  s.resource_bundles = {
      'EngageUI' => ['Assets/**/*.{xcassets,storyboard}']
  }
  # s.resources = 'Assets/**/*.{xcassets}'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  s.user_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/../../../../ios-engage-ui-framework/Frameworks"' }
  s.libraries = 'z', 'icucore'
  s.frameworks =  'CFNetwork', 'Security', 'SystemConfiguration', 'UIKit'
  s.dependency 'EngageKit'
  s.dependency 'EngageRouter'
  s.dependency 'JVFloatLabeledTextField', '~> 1.2'

  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |sub|
      # subspec for including everything but the optional subspecs
  end
  
  s.subspec 'UrbanAirship' do |sub|
      sub.dependency 'Engage-UrbanAirship'
      sub.dependency 'EngageKit'
      sub.source_files = 'UrbanAirship/**/*'
  end
  
  s.subspec 'MoEngage' do |sub|
      sub.dependency 'MoEngage-iOS-SDK'
      sub.dependency 'EngageKit'
      sub.source_files = 'MoEngage/**/*'
  end
  
end
