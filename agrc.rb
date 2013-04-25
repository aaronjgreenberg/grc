require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Agrc < Formula
  homepage 'https://github.com/aaronjgreenberg/grc'
  url 'https://github.com/aaronjgreenberg/grc/archive/master.zip'
  sha1 '8b9f6d5b83cb6306050184f43ae93d54d23c64f4'
  version '1.0'

  def install
    inreplace ['bin/grc', 'share/man/man1/grc.1'], '/etc', etc
    inreplace ['bin/grcat', 'share/man/man1/grcat.1'], '/usr/local', prefix

    bin.install %w[bin/grc bin/grcat]
    man1.install %w[share/man/man1/grc.1 share/man/man1/grcat.1]
  end

end
