#
# Be sure to run `pod lib lint EngageUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EngageUI'
  s.version          = '0.1.0'
  s.summary          = 'UI framework for Engage Apps.'
  s.swift_version    = '4.0'

  s.description      = 'A modular library for implementing views in Engage apps.' 

  s.homepage         = 'https://www.engageft.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jeff Cedilla' => 'jeff.cedilla@engageft.com' }
  s.source           = { :git => 'https://bitbucket.org/engageft/ios-engage-ui-framework.git', :tag => s.version.to_s }
  s.source_files = 'EngageUI/**/*'
  s.ios.deployment_target = '9.3'


  
  # s.resource_bundles = {
  #   'EngageUI' => ['EngageUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  s.dependency 'EngageKit'
  s.dependency 'SkyFloatingLabelTextField', '~> 3.0'
end
