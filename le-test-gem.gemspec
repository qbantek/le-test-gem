require_relative 'lib/le/test/gem/version'

Gem::Specification.new do |spec|
  spec.name          = "le-test-gem"
  spec.version       = Le::Test::Gem::VERSION
  spec.authors       = ["Erich N. Quintero"]
  spec.email         = ["qbantek@gmail.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency 'gem-release',                '~> 2.1',   '>= 2.1.1'
end
