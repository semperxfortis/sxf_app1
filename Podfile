platform :ios, '12.0'

# CocoaPods analytics sends network stats synchronously affecting flutter build latency.
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

# Prevent Cocoapods from embedding a plist with compilation and platform statistics.
install! 'cocoapods', :disable_input_output_paths => true

# Project-specific settings
project 'Runner', {
  'Debug' => :debug,
  'Profile' => :release,
  'Release' => :release,
}

# Set the path to your Flutter SDK installation
flutter_root = File.expand_path('/Users/gonzalo/Desktop/flutter')
load File.join(flutter_root, 'packages', 'flutter_tools', 'bin', 'podhelper.rb')

target 'Runner' do
  use_frameworks!
  use_modular_headers!

  flutter_install_all_ios_pods File.dirname(File.realpath(__FILE__))
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
  end
end

