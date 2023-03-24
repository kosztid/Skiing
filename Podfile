source 'https://cdn.cocoapods.org/'
source 'https://github.com/CocoaPods/Specs.git'
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

platform :ios, '15.0'
inhibit_all_warnings!
use_frameworks!

workspace 'Skiing.xcworkspace'

def developmentPods
  pod 'SwiftGen'
  pod 'SwiftLint'
end

def basePods
  pod 'Factory', '~> 1.2.0'
  pod 'FlowStacks'
end

target 'Skiing' do
  project 'Skiing/Skiing.xcodeproj'

  basePods
  developmentPods
  pod 'GoogleMaps', '7.4.0'
  
end

target 'Integration' do
  project 'Integration/Integration.xcodeproj'

  basePods
  target 'IntegrationTests' do
  end
end

target 'UI' do
  project 'UI/UI'

  basePods
end
