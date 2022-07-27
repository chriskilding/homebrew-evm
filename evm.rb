class Evm < Formula
  desc "Erlang Version Manager"
  homepage "https://github.com/robisonsantos/evm"
  url "https://github.com/robisonsantos/evm/archive/5.0.2.tar.gz"
  sha256 "6c6a4f729db06578a38ad305961b5013310eaaa87b559a3f026dbfb4a5218ea2"
  head "https://github.com/robisonsantos/evm.git"

  depends_on "wget"
  
  def install
    zsh_function.install "evm"
  end

  test do
    system "evm", "version"
  end
  
  def caveats; <<-EOS
    For EVM to function, add the following to your #{shell_profile}:
    source /usr/local/share/zsh/site-functions/evm

    Please also create the following folders:
    $HOME/.evm/erlang_tars
    $HOME/.evm/erlang_versions
    $HOME/.evm/evm_config
    EOS
  end
end
