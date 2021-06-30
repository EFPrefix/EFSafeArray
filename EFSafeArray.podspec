Pod::Spec.new do |s|
    s.name             = 'EFSafeArray'
    s.version          = '5.1.2'
    s.summary          = 'EFSafeArray is an extension to make Array subscript safe.'
    
    s.description      = <<-DESC
    EFSafeArray is an extension to make array subscript safe, nil will be return instead of crash if index is out of range.
    DESC
    
    s.homepage         = 'https://github.com/EFPrefix/EFSafeArray'
    s.screenshots      = 'https://raw.githubusercontent.com/EFPrefix/EFSafeArray/master/Assets/EFSafeArray.png'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
    s.source           = { :git => 'https://github.com/EFPrefix/EFSafeArray.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/EyreFree777'
    
    s.swift_version = "5.0"

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'
    s.tvos.deployment_target = '9.0'
    s.watchos.deployment_target = '2.0'

    s.requires_arc = true
    s.source_files = 'EFSafeArray/*.{h,swift}'

    s.frameworks = 'Foundation'
end
