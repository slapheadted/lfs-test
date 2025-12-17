require_relative "lib/lfs_test/version"

Gem::Specification.new do |spec|
  spec.name          = "lfs-test"
  spec.version       = LfsTest::VERSION
  spec.authors       = ["LFS Test"]
  spec.email         = ["test@example.com"]

  spec.summary       = "A Ruby gem with a binary tracked by git-lfs"
  spec.description   = "This gem demonstrates how to include a binary file tracked with git-lfs in a Ruby gem"
  spec.homepage      = "https://github.com/slapheadted/lfs-test"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "bin/**/*", "README.md"]
  spec.bindir        = "bin"
  spec.executables   = ["lfs-test-binary"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.6.0"
end
