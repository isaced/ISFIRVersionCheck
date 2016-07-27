#
# Be sure to run `pod lib lint ISFIRVersionCheck.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ISFIRVersionCheck'
  s.version          = '0.2.0'
  s.summary          = 'fir 版本自动检测，有新版本弹 Alert 前往更新'

  s.description      = <<-DESC
                        基于 fir 对比 build 版本号自动检测新版本信息，有新版本弹 Alert 前往更新。
                       DESC

  s.homepage         = 'https://github.com/isaced/ISFIRVersionCheck'
  s.screenshots     = 'https://raw.githubusercontent.com/isaced/ISFIRVersionCheck/master/screenshot.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isaced' => 'isaced@163.com' }
  s.source           = { :git => 'https://github.com/isaced/ISFIRVersionCheck.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'ISFIRVersionCheck/Classes/**/*'
end
