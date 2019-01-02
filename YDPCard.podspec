#
# Be sure to run `pod lib lint YDPCard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YDPCard'
  s.version          = '0.1.0'
  s.summary          = 'YDPCard simple '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://yudonpay.com'
  s.screenshots      = 'https://github.com/Yudonpay/YDPCard/blob/master/Resources/Front.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'José Miguel Herrero' => 'jmiguel.herrero@yudonpay.com' }
  s.source           = { :git => 'https://github.com/Yudonpay/YDPCard.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/yudonpay'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'
  s.source_files = 'YDPCard/Classes/**/*.{swift,xib}'
  s.resources = 'YDPCard/Assets/Assets.xcassets'
  s.resource_bundles = {
     'YDPCard' => ['YDPCard/Assets/Assets.xcassets']
   }

end
