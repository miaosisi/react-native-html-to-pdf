#
# Be sure to run `pod lib lint react-native-html-to-pdf.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'react-native-html-to-pdf'
  s.version          = package['version']
  s.summary          = 'transfer html string to pdf file in react native'


  s.description      = <<-DESC
This pod simply exports a js bridge for react native to use html-to-pdf function
                       DESC

  s.homepage         = 'https://github.com/miaosisi/react-native-html-to-pdf'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'miaosisi' => 'Z.J.C.Bill@gmail.com' }
  s.source           = { :git => 'https://github.com/miaosisi/react-native-html-to-pdf.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.platform     = :ios, "8.0"

  s.source_files = "ios/RNHTMLtoPDF/*.{h,m,swift}"

  s.dependency 'React'
  s.frameworks = 'UIKit'

end
