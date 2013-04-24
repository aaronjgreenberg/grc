require 'formula'

class AaronGrc < Formula
  homepage ''
  url 'https://github.com/aaronjgreenberg/grc'
  sha1 'cb45ab8cb20aaf80a1f64b2a155837b8f489b76a'

  def install
    inreplace ['bin/grc', 'share/man/man1/grc.1'], '/etc', etc
    inreplace ['bin/grcat', 'share/man/man1/grcat.1'], '/usr/local', prefix

    bin.install %w[grc grcat]
    man1.install %w[grc.1 grcat.1]
  end

end
