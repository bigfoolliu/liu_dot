# 配置pyenv，拖累了shell加载的速度,移动到.zpofile
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

alias "ll=ls -l"
alias "lc=ls -alht | cat -n"
alias "la=ls -alth"

# ls增强版，按照时间倒序
alias "ld=lsd -alt"

# 配置ls输出的颜色
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='CxfxcxdxbxegedabagGxGx'

# 配置jdk的环境变量
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-14.0.2.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

# 配置maven的环境变量
export MAVEN_HOME=/Users/liu/Desktop/liu/tools/apache-maven-3.6.3
export PATH=$PATH:$MAVEN_HOME/bin

# 配置nvim，拖累了shell加载的速度，移动到.zprofile
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"
