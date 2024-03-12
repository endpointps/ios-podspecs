#
# Be sure to run `pod lib lint EngageRouter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EngageRouter'
  s.version          = '0.1.0'
  s.swift_version    = '5.0'
  s.summary          = 'Routing layer for EngageUI'
  s.description      = 'Connects different backends for EngageUI'
  s.homepage         = 'https://www.engageft.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jeff Cedilla' => 'jeff.cedilla@engageft.com' }
  s.source           = { :git => 'https://bitbucket.org/engageft/ios-engage-router-framework.git', :branch => 'master' }

  s.dependency 'EngageKit'
  s.dependency 'EngageData'

  s.ios.deployment_target = '11.0'

  s.source_files = 'EngageRouter/Source/**/*'

end
