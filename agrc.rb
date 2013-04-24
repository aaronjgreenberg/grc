require 'formula'

class Agrc < Formula
  homepage ''
  url 'https://github.com/aaronjgreenberg/grc'
  sha1 '1cce58a533678b8edac74f6a7264897ddecd4561'
  version '1.0'

  def install
    inreplace ['bin/grc', 'share/man/man1/grc.1'], '/etc', etc
    inreplace ['bin/grcat', 'share/man/man1/grcat.1'], '/usr/local', prefix

    bin.install %w[grc grcat]
    man1.install %w[grc.1 grcat.1]
  end

end
