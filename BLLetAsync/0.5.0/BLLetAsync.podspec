#
# Be sure to run `pod lib lint BLLetAsync.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLLetAsync'
  s.version          = '0.5.0'
  s.summary          = 'BLLetAsync Frameworks'

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
  s.author           = { 'zjjllj@gmail.com' => 'zjjllj@gmail.com' }
  s.source           = { :git => 'https://github.com/ibroadlink/BLLetAsync.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  
  s.vendored_frameworks = 'BLLetAsync/Classes/*.{framework}'
  s.dependency   'BLLet/BLLetBase', '~> 2.3'
  s.dependency   'BLLet/BLLetCore', '~> 2.3'
  s.dependency   'BLLet/BLLetCloud', '~> 2.3'

end
