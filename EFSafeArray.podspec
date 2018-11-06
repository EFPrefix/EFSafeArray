Pod::Spec.new do |s|
  s.name             = 'EFSafeArray'
  s.version          = '4.1.0'
  s.summary          = 'EFSafeArray is an extension to make Array subscript safe.'

  s.description      = <<-DESC
EFSafeArray is an extension to make Array subscript safe, nil will be return install of crash if index is out of range.
                       DESC

  s.homepage         = 'https://github.com/EFPrefix/EFSafeArray'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
  s.source           = { :git => 'https://github.com/EFPrefix/EFSafeArray.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/EyreFree777'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.source_files = 'EFSafeArray/Classes/**/*'
end
