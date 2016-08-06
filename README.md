# Debug

[![CI Status](http://img.shields.io/travis/matteocrippa/Debug.svg?style=flat)](https://travis-ci.org/matteocrippa/Debug)
[![Version](https://img.shields.io/cocoapods/v/Debug.svg?style=flat)](http://cocoapods.org/pods/Debug)
[![License](https://img.shields.io/cocoapods/l/Debug.svg?style=flat)](http://cocoapods.org/pods/Debug)
[![Platform](https://img.shields.io/cocoapods/p/Debug.svg?style=flat)](http://cocoapods.org/pods/Debug)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Set in your **Swift Compiler - Custom Flags -Other Flags**, only for DEBUG, a flag like `-D DEBUG`

## Usage
Import the lib using:

```swift
import Debug
```

then use print function normally, but prepend `Debug` like this:

```swift
Debug.print('Hello world!')
```

Debug support also remote logging, clone [Debug-Remote](https://github.com/matteocrippa/Debug-Remote) and start the server.

Then add this simple (extra row) in your `AppDelegate`:

```swift
Debug.set(remoteURI: "http://")
```

Set your remote log url according the one provided by the server.

*IMPORTANT* Each time you restart the server you will get a new url, pay attention in updating the url in your app before starting.

Then update your `Info.plist` file adding this entry:

```xml
<key>NSAppTransportSecurity</key>
<dict>
<key>NSExceptionDomains</key>
<dict>
<key>localtunnel.me</key>
<dict>
<key>NSIncludesSubdomains</key>
<true/>
<key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
<true/>
<key>NSTemporaryExceptionMinimumTLSVersion</key>
<string>TLSv1.1</string>
</dict>
</dict>
</dict>
```


## Installation

Debug is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Debug"
```

then add after `end` this few rows to manage DEBUG flags

```ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
        if target.name == 'Debug'
            target.build_configurations.each do |config|
                if config.name == 'Debug'
                    config.build_settings['OTHER_SWIFT_FLAGS'] = '-DDEBUG'
                else
                    config.build_settings['OTHER_SWIFT_FLAGS'] = ''
                end
            end
        end
    end
end
```

## Author

Matteo Crippa, @ghego20

## License

Debug is available under the MIT license. See the LICENSE file for more info.
