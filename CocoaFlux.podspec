#
#  Be sure to run `pod spec lint CocoaFlux.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CocoaFlux"
  s.version      = "0.0.1"
  s.summary      = "In-progress implementation of the Facebook Flux architectural pattern for iOS."
  s.homepage     = "https://github.com/brotchie/CocoaFlux"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "James Brotchie" => "brotchie@gmail.com" }
  s.social_media_url   = "http://twitter.com/brotchie"

  s.platform     = :ios
  s.source       = { :git => "https://github.com/brotchie/CocoaFlux.git", :tag => "0.0.1" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.public_header_files = "Classes/**/*.h"

  s.requires_arc = true
end
