if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi


export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
. "$HOME/.cargo/env"
