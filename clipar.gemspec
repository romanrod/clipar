
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "clipar/version"

Gem::Specification.new do |spec|
  spec.name          = "clipar"
  spec.version       = Clipar::VERSION
  spec.authors       = ["Roman"]
  spec.email         = ["roman.g.rodriguez@gmail.com"]

  spec.summary       = %q{Handle command line parameters as methods within your code}
  spec.description   = %q{Easy way to pass arguments over command line and get them from your code}
  spec.homepage      = "https://github.com/romanrod/clipar"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
