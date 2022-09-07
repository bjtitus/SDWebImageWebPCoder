Pod::Spec.new do |s|
  s.name             = 'TMSDWebImageWebPCoder'
  s.version          = '0.9.0'
  s.summary          = 'WebP decoder/encoder for TMSDWebImage coder plugin.'

  s.description      = <<-DESC
This is a TMSDWebImage coder plugin to support WebP image.
                       DESC

  s.homepage         = 'https://github.com/TMSDWebImage/TMSDWebImageWebPCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bogdan Poplauschi' => 'bpoplauschi@gmail.com' }
  s.source           = { :git => 'https://github.com/TMSDWebImage/TMSDWebImageWebPCoder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.module_map = 'TMSDWebImageWebPCoder/Module/TMSDWebImageWebPCoder.modulemap'
  
  s.source_files = 'TMSDWebImageWebPCoder/Classes/**/*', 'TMSDWebImageWebPCoder/Module/TMSDWebImageWebPCoder.h'
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) TMSD_WEBP=1',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  s.watchos.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) TMSD_WEBP=1 WEBP_USE_INTRINSICS=1',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  s.dependency 'TMSDWebImage/Core', '~> 5.13'
  s.dependency 'libwebp', '~> 1.0'
  
end
