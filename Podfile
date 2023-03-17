source 'https://cdn.cocoapods.org/'
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
  
end
