class Ppgen < Formula
  desc "Random, easy-to-remember passphrases from the EFF wordlist"
  homepage "https://github.com/s12v/ppgen"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.1/ppgen-aarch64-apple-darwin.tar.gz"
      sha256 "7562c2872c898b106b27b70a28546602c4f681d16c8459911f89f8e96c248467"
    end
    on_intel do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.1/ppgen-x86_64-apple-darwin.tar.gz"
      sha256 "33fa12f6da248ca64025b980db17c471f6c13c3de37bfec58b4b9188a40d3e51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.1/ppgen-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee386998d995c1e47fbce711e7f9137afd1d97cae26459dc04813508e106e91f"
    end
    on_intel do
      url "https://github.com/s12v/ppgen/releases/download/v0.1.1/ppgen-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d2a4fe586cd6c417d9aaa5e038b0f05515922206e9afa7f8534866f124249a4"
    end
  end

  def install
    bin.install "ppgen"
  end

  test do
    assert_match(/\A[a-z-]+\n\z/, shell_output("#{bin}/ppgen -w 3"))
  end
end
