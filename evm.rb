class EVM < Formula
  desc "Erlang Version Manager"
  homepage "https://github.com/robisonsantos/evm"

  head "https://github.com/robisonsantos/evm.git"

  depends_on "wget"
  
  def install
    system "./install"
  end

  test do
    system "evm", "version"
  end
  
  def caveats; <<-EOS
    For EVM to function, you must now append the following line to your ~/.bashrc (or ~/.zshrc etc):
    
    source $HOME/.evm/scripts/evm
    
    Then reload your shell.
    EOS
  end
end
