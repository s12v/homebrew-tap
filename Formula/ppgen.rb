class Ppgen < Formula
  desc "Random, easy-to-remember passphrases from the EFF wordlist"
  homepage "https://github.com/s12v/ppgen"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/s12v/ppgen/releases/download/v0.2.0/ppgen-aarch64-apple-darwin.tar.gz"
      sha256 "56387187eabdee05c6f10615a7e71e66dc5ec8f1e8ec463c096fd60feece5825"
    end
    on_intel do
      url "https://github.com/s12v/ppgen/releases/download/v0.2.0/ppgen-x86_64-apple-darwin.tar.gz"
      sha256 "3099b4e1199c1f39bed43f0e0ab1552eb3e6187f45dc030cec80c078cbf4735d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/s12v/ppgen/releases/download/v0.2.0/ppgen-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00e8e9aa34b0f5f4c467af5c162e1b523ea130ba48165ebd9dd2f97746aad151"
    end
    on_intel do
      url "https://github.com/s12v/ppgen/releases/download/v0.2.0/ppgen-x86_64-unknown-linux-musl.tar.gz"
      sha256 "013a9973848b7021b95b7d13186fb42c72eed50c04e1e69036cd8f08aceacb07"
    end
  end

  def install
    bin.install "ppgen"
  end

  test do
    assert_match(/\A[a-z-]+\n\z/, shell_output("#{bin}/ppgen -w 3"))
  end
end
