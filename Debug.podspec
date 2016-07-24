#
# Be sure to run `pod lib lint Debug.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'Debug'
    s.version          = '0.1.0'
s.summary          = 'A swift print that works only in debug mode'

s.description      = <<-DESC
Debug print for swift, automatically mute the print in RELEASE mode.
DESC

s.homepage         = 'https://github.com/matteocrippa/Debug'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Matteo' => '' }
s.source           = { :git => 'https://github.com/matteocrippa/Debug.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/ghego20'

s.ios.deployment_target = '8.0'
s.tvos.deployment_target = '9.0'

  s.source_files = 'Debug/Classes/**/*'

end
