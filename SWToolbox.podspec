#
# Be sure to run `pod lib lint SWToolbox.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SWToolbox"
  s.version          = "1.0.0"
  s.summary          = "Curated classes I usually used in project."
  s.description      = <<-DESC
                       There is a time when I open my old projects to copy classes into a new one.

                       This toolbox is mean to end that copy once, and for all.
                       DESC
  s.homepage         = "https://github.com/sarunw/SWToolbox"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Sarun Wongpatcharapakorn" => "artwork.th@gmail.com" }
  s.source           = { :git => "https://github.com/sarunw/SWToolbox.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'CoreData' do |ss|
    ss.source_files = 'Pod/Classes/CoreData/**/*.{h,m}'
    ss.frameworks = 'CoreData'
  end

  s.subspec 'Helper' do |ss|
    ss.source_files = 'Pod/Classes/Helper/**/*.{h,m}'
  end


  s.resource_bundles = {
    'SWToolbox' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
