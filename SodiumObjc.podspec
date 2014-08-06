Pod::Spec.new do |s|
  s.name             = "SodiumObjc"
  s.version          = "2"
  s.summary          = "SodiumObjc is a wrapper for NaCl"
  s.description      = <<-DESC
                       SodiumObjc is a wrapper for NaCl, providing Obj-C methods for it.
                       DESC
  s.homepage         = "https://github.com/iltercengiz/SodiumObjc"
  s.license          = 'MIT'
  s.author           = { "iltercengiz" => "ilter@cengiz.im" }
  s.source           = { :git => "https://github.com/iltercengiz/SodiumObjc.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'SodiumObjc'

  s.subspec 'Sodium' do |sodium|
    sodium.preserve_paths = 'lib/ios/include/**'
    sodium.vendored_libraries = 'lib/ios/libsodium-ios.a'
    sodium.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/lib/ios/include/**" }
  end

  s.public_header_files = 'SodiumObjc/*.h'
  s.frameworks = 'Security'
end
