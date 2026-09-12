class Ppgen < Formula
  desc "Random, easy-to-remember passphrases from the EFF wordlist"
  homepage "https://github.com/s12v/ppgen"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.0/ppgen-aarch64-apple-darwin.tar.gz"
      sha256 "5f05c28ef43693ee6070444dbf50b1fcaf4a7bab71122045dc460c3b95a0dff6"
    end
    on_intel do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.0/ppgen-x86_64-apple-darwin.tar.gz"
      sha256 "f067df0deca7b3c3b1259eb2152b7073ae86d25950d05e9f91fe4c75b3438bdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.0/ppgen-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e10502f17123d8f5be3c828eca7050e45c2b42ef73a0222e91e49a02985a2647"
    end
    on_intel do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.0/ppgen-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85d1a9773f9e643befeb1c0711183cb4557ce1843f0817d92edc2da2f0ef8485"
    end
  end

  def install
    bin.install "ppgen"
  end

  test do
    assert_match(/\A[a-z-]+\n\z/, shell_output("#{bin}/ppgen -w 3"))
  end
end
