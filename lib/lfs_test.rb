require_relative "lfs_test/version"

module LfsTest
  class Error < StandardError; end

  def self.binary_path
    File.expand_path("../bin/lfs-test-binary", __dir__)
  end

  def self.run_binary
    unless File.exist?(binary_path)
      raise Error, "Binary not found at #{binary_path}"
    end

    unless File.executable?(binary_path)
      raise Error, "Binary at #{binary_path} is not executable"
    end

    system(binary_path)
  end
end
