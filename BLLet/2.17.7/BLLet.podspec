#
# Be sure to run `pod lib lint BLLet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLLet'
  s.version          = '2.17.7'
  s.summary          = 'BLLet Framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Use for control BroadLink Devices.
                       DESC

  s.homepage         = 'http://www.broadlink.com.cn'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author 			= { 'NicolasKim' => 'bhk545145@163.com' }
  s.source           = { :git => 'https://github.com/ibroadlink/BLLet.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' , 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.source_files = 'BLLet/Classes/**/*'

  s.subspec 'BLLetBase' do |bs|
      bs.vendored_frameworks = 'BLLet/Classes/BLLetBase/*.{framework}'
      bs.dependency 'AFNetworking'
  end
  
  s.subspec 'BLLetCore' do |cs|
      cs.libraries = 'z'
      cs.vendored_frameworks = 'BLLet/Classes/BLLetCore/*.{framework}'
      cs.dependency   'BLLet/BLLetBase'
  end
  
  s.subspec 'BLLetPlugins' do |ps|
      ps.libraries = 'sqlite3'
      ps.vendored_frameworks = 'BLLet/Classes/BLLetPlugins/*.{framework}'
      ps.dependency   'BLLet/BLLetBase'
  end
  
  s.subspec 'BLLetAccount' do |as|
      as.vendored_frameworks = 'BLLet/Classes/BLLetAccount/*.{framework}'
      as.dependency   'BLLet/BLLetBase'
  end
  
  s.subspec 'BLLetFamily' do |fs|
      fs.vendored_frameworks = 'BLLet/Classes/BLLetFamily/*.{framework}'
      fs.dependency   'BLLet/BLLetBase'
      
  end
  
  s.subspec 'BLLetIRCode' do |fs|
      fs.vendored_frameworks = 'BLLet/Classes/BLLetIRCode/*.{framework}'
      fs.dependency   'BLLet/BLLetBase'
      fs.dependency   'BLLet/BLLetCore'
  end

end
