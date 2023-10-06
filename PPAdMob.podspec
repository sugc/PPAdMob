#
# Be sure to run `pod lib lint PPAdMob.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PPAdMob'
  s.version          = '0.1.0'
  s.summary          = 'Private persoal ad for mobile'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sugc/PPAdMob'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sugc' => '2528397406@qq.com' }
  s.source           = { :git => 'https://github.com/sugc/PPAdMob.git', :tag => s.version.to_s }
  s.module_name             = 'PPAdMob'
  s.ios.deployment_target =
  '10.0'
  s.swift_version = '5.0'
  
#  s.use_modular_headers = 'true'
  
#  s.pod_target_xcconfig = { "OTHER_SWIFT_FLAGS[config=Release]" => "$(inherited) -suppress-warnings"}


  s.source_files = 'PPAdMob/Classes/*.swift'
#  s.resource = ['PPAdMob/Assets/**/*.xcassets']
#  s.resource_bundles = {
#    "PPAdMob" => ['PPAdMob/Resources/*.*']
#  }
  
  s.subspec 'Core' do |core|
    core.source_files = 'PPAdMob/Classes/Core/**/*.swift'
  #  s.resource = ['PPAdMob/Assets/**/*.xcassets']
#    s.resource_bundles = {
#      "PPAdMob-Core" => ['PPAdMob/Resources/Core/*.*']
#    }
  end
  
  s.subspec 'Local' do |local|
    local.source_files = 'PPAdMob/Classes/Local/**/*.swift'
  #  s.resource = ['PPAdMob/Assets/**/*.xcassets']
#  local.resource_bundles = {
#      "PPAdMob-Local" => ['PPAdMob/Resources/Local/*.*']
#    }
  end
  
  s.default_subspecs = 'Core', 'Local'
  
end
