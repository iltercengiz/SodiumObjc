Pod::Spec.new do |s|
  s.name             = "SodiumObjc"
  s.version          = "1"
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

  s.public_header_files = 'SodiumObjc/*.h'
  s.frameworks = 'Security'
end
