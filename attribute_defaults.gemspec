require File.expand_path("../lib/attribute_defaults/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "attribute_defaults"
  s.version     = AttributeDefaults::VERSION
  s.summary     = "attribute_defaults-#{s.version}"
  s.description = "Add default attribute values when creating models."
  s.authors     = ["Jonathan Viney"]
  s.email       = "jonathan.viney@gmail.com"
  s.files       = `git ls-files`.split("\n")
  s.homepage    = "http://github.com/jviney/attribute_defaults"
  
  s.add_dependency "activerecord", ">= 5.0.0"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "mysql2"
end
