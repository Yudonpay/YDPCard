<p align="center">
<img src="https://github.com/Yudonpay/YDPCard/blob/master/Resources/card.jpeg">
</p>
<div align="center">
<h1> YDPCard</h1>
</div>

[![Version](https://img.shields.io/cocoapods/v/YDPCard.svg?style=flat)](https://cocoapods.org/pods/YDPCard)
[![Platform](https://img.shields.io/badge/Platform-iOS-blue.svg?style=fla)](https://cocoapods.org/pods/FormTableViewSwift)
[![Swift](https://img.shields.io/badge/Swift-4.2-orange.svg)](https://swift.org/)
[![License](https://camo.githubusercontent.com/eb5485388cd282c0139df4ed308b825420589a7c/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c6963656e73652f6861636b696674656b6861722f49514b6579626f6172644d616e616765722e737667)](https://cocoapods.org/pods/YDPCard)

## GIF animation
[![](https://github.com/Yudonpay/YDPCard/blob/master/Resources/example.gif)]()

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

YDPCard is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YDPCard'
```
Also add this to end:
```ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CONFIGURATION_BUILD_DIR'] = '$PODS_CONFIGURATION_BUILD_DIR'
        end
    end
end

```
## Author

José Miguel Herrero, jmiguel.herrero@yudonpay.com

## License

YDPCard is available under the MIT license. See the LICENSE file for more info.
