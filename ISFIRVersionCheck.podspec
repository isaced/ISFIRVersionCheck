#
# Be sure to run `pod lib lint ISFIRVersionCheck.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ISFIRVersionCheck'
  s.version          = '0.1.0'
  s.summary          = 'fir 版本自动检测，有新版本弹 Alert 前往更新'

  s.description      = <<-DESC
                        自动检测 fir 新版本，并提示更新
                       DESC

  s.homepage         = 'https://github.com/isaced/ISFIRVersionCheck'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isaced' => 'isaced@163.com' }
  s.source           = { :git => 'https://github.com/isaced/ISFIRVersionCheck.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'ISFIRVersionCheck/Classes/**/*'
end
