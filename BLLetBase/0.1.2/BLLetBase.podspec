#
# Be sure to run `pod lib lint BLLetBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLLetBase'
  s.version          = '0.1.2'
  s.summary          = 'BLLet Base Library'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      BLLet contains account, controller
                       DESC

  s.homepage         = 'http://www.broadlink.com.cn'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zjjllj@gmail.com' => 'zjjllj@gmail.com' }
  s.source           = { :git => 'https://github.com/ibroadlink/appsdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BLLetBase/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'BLLetBase' => ['BLLetBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.libraries = 'sqlite3','z'
  s.vendored_libraries = 'BLLetBase/Classes/*.{a}'

end
