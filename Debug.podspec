Pod::Spec.new do |s|
s.name             = 'Debug'
s.version          = '0.3'
s.summary          = 'A swift print that works only in debug mode'

s.description      = <<-DESC
Debug print for swift, automatically mute the print in RELEASE mode.
DESC

s.homepage         = 'https://github.com/matteocrippa/Debug'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Matteo Crippa' => '' }
s.source           = { :git => 'https://github.com/matteocrippa/Debug.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/ghego20'

s.ios.deployment_target = '9.0'
s.tvos.deployment_target = '9.0'

s.source_files = 'Debug/Classes/**/*'

s.dependency 'AlamofireRouter'

end
