#
# Be sure to run `pod lib lint EFSafeArray.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EFSafeArray'
  s.version          = '0.0.1'
  s.summary          = 'EFSafeArray is an extension to make Array subscript safe.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
EFSafeArray is an extension to make Array subscript safe, nil will be return install of crash if index is out of range.
                       DESC

  s.homepage         = 'https://github.com/EyreFree/EFSafeArray'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
  s.source           = { :git => 'https://github.com/EyreFree/EFSafeArray.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/EyreFree777'

  s.ios.deployment_target = '8.0'

  s.source_files = 'EFSafeArray/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EFSafeArray' => ['EFSafeArray/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
