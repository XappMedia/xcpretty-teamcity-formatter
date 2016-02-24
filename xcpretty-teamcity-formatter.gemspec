# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "xcpretty-teamcity-formatter"
  spec.version       = "0.0.1"
  spec.authors       = ["Michael Myers"]
  spec.email         = ["mmm@xappmedia.com"]

  spec.summary       = %q{TeamCity formatter for xcpretty.}
  spec.description   = %q{TeamCity formatter for xcpretty.}
  spec.homepage      = "https://github.com/XappMedia/xcpretty-teamcity-formatter.git"
  spec.license       = "MIT"

  spec.files         = [
      "README.md",
      "LICENSE",
      "lib/teamcity_formatter.rb",
      "bin/xcpretty-teamcity-formatter"]
  spec.executables   = ["xcpretty-teamcity-formatter"]
  spec.require_paths = ["lib"]

  spec.add_dependency "xcpretty", "~> 0.2", ">= 0.0.7"
  
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
