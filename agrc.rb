require 'formula'

class Agrc < Formula
  homepage ''
  url 'https://github.com/aaronjgreenberg/grc/archive/master.zip'
  sha1 '8a0cd6ff129dbdb01e2d47e051493dfea6781745'
  version '1.0'

  def install
    inreplace ['bin/grc', 'share/man/man1/grc.1'], '/etc', etc
    inreplace ['bin/grcat', 'share/man/man1/grcat.1'], '/usr/local', prefix

    bin.install %w[grc grcat]
    man1.install %w[grc.1 grcat.1]
  end

end
