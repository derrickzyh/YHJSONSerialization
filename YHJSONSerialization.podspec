Pod::Spec.new do |s|
  s.name             = "YHJSONSerialization"
  s.version          = "0.1.0"
  s.summary          = "JSON serialization and deserialization using system API"
  s.homepage         = "https://github.com/derrickzyh/YHJSONSerialization"
  s.license          = 'MIT'
  s.author           = { "Derrick Zhang" => "derrickzyh@gmail.com" }
  s.source           = { :git => "https://github.com/derrickzyh/YHJSONSerialization.git", :tag =>s.version.to_s }

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'YHJSONSerialization/*.{h,m}'

end
