require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNImpresaNetscope"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNImpresaNetscope
                   DESC
  s.homepage     = "https://github.com/author/RNImpresaNetscope"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Tiago Freitas" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/author/RNImpresaNetscope.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

  s.vendored_frameworks = 'ios/GemiusSDK.framework'
  #s.vendored_frameworks "others frameworks"
end

