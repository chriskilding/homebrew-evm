class Evm < Formula
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
    For EVM to function, add the following to your #{shell_profile}:
    
    source $HOME/.evm/scripts/evm    
    EOS
  end
end
