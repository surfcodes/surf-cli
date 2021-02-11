class Surf < Formula
    desc "Surf your local git repository via browser - github.surf"
    homepage "https://github.com/bridgedxyz/surf"
    url "https://github.com/federico-terzi/espanso/releases/latest/download/espanso-mac.tar.gz"
    sha256 "2473866b99eef9ea983200b7aac91592b938404ffaa1fb8c72beacb2ebd3203a"
    version "0.1.0"
  
    def install
      bin.install "espanso"
    end
  end