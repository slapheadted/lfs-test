# lfs-test

A Ruby gem that demonstrates how to include a binary file tracked with git-lfs.

## Overview

This gem contains a binary executable (`lfs-test-binary`) that is tracked using Git Large File Storage (git-lfs). This is useful for gems that need to distribute compiled binaries or other large files.

## Installation

First, ensure you have git-lfs installed:

```bash
git lfs install
```

Clone the repository:

```bash
git clone https://github.com/slapheadted/lfs-test.git
cd lfs-test
```

Build and install the gem:

```bash
gem build lfs-test.gemspec
gem install lfs-test-0.1.0.gem
```

## Usage

You can run the binary directly:

```bash
./bin/lfs-test-binary
```

Or use it from Ruby:

```ruby
require 'lfs_test'

# Get the binary path
LfsTest.binary_path

# Run the binary
LfsTest.run_binary
```

## Development

The binary file in `bin/lfs-test-binary` is tracked with git-lfs as configured in `.gitattributes`.

To verify git-lfs is tracking the binary:

```bash
git lfs ls-files
```

## License

MIT