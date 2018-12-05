#
# Be sure to run `pod lib lint BLLet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLLet'
  s.version          = '2.8.15'
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
  s.author = { 'NicolasKim' => 'bhk545145@163.com' }
  s.source           = { :git => 'https://github.com/ibroadlink/BLLet.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  # s.source_files = 'BLLet/Classes/**/*'

  s.subspec 'BLLetBase' do |bs|
      bs.vendored_frameworks = 'BLLet/Classes/BLLetBase/*.{framework}'
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
  
  s.subspec 'BLLetCloud' do |cls|
      cls.vendored_frameworks = 'BLLet/Classes/BLLetCloud/*.{framework}'
      cls.dependency   'BLLet/BLLetBase'
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
  end

end
