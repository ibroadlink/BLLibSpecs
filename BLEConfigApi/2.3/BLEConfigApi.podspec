#
# Be sure to run `pod lib lint BLSFamily.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLEConfigApi'
  s.version          = '2.3'
  s.summary          = 'A short description of BLEConfigApi.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://www.broadlink.com.cn'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zjjllj@gmail.com' => 'zjjllj@gmail.com' }
  s.source           = { :git => 'git@github.com:ibroadlink/BLEConfigApi.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'BLEConfigApi/Classes/*.{framework}'
      
end