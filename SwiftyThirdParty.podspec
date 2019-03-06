#
# Be sure to run `pod lib lint AdBanaSDKSample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyThirdParty'
  s.version          = '0.1.0'
  s.summary          = 'Swift ThirdParty'
  s.description      = 'This is Swift ThirdParty'

  s.homepage         = 'https://github.com/InsectQY/SwiftyThirdParty/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'InsectQY' => '704861917@qq.com' }
  s.source           = { :git => 'https://github.com/InsectQY/SwiftyThirdParty.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.swift_version = "4.2"

  s.subspec 'MJRefresh' do |ss|
    ss.dependency 'MJRefresh'
    ss.source_files = 'SwiftyThirdParty/MJRefresh/Classes/**'
  end

  s.subspec 'Kingfisher' do |ss|
    ss.dependency 'Kingfisher'
    
    ss.subspec 'Core' do |sss|
      sss.source_files = 'SwiftyThirdParty/Kingfisher/Core/Classes/**'
    end

    ss.subspec 'WebP' do |sss|
    	sss.dependency 'KingfisherWebP'
    	sss.source_files = 'SwiftyThirdParty/Kingfisher/WebP/Classes/**'
    end
  end

  s.subspec 'QMUIKit' do |ss|

	ss.dependency 'QMUIKit/QMUIComponents/QMUITips'

  	ss.subspec 'Toast' do |sss|
    	sss.source_files = 'SwiftyThirdParty/QMUIKit/Toast/Classes/**'
      # sss.dependency = 'QMUIKit/QMUIComponents/QMUITips'
      end
  end

end
