# 执行命令zprof可以分析zsh执行耗时的函数以及插件
zmodload zsh/zprof

# 重新加载zsh，命令zsh -i -c exit, 结合该文件末尾的配置，可以生成分析文件,参考：
# zmodload zsh/datetime
# setopt PROMPT_SUBST
# PS4='+$EPOCHREALTIME %N:%i> '
# logfile=$(mktemp zsh_profile.7Pw1Ny0G)
# echo "Logging to $logfile"
# exec 3>&2 2>$logfile
# setopt XTRACE

# 基本配置
#**********************************************************************************
# 如果是用的bash，需要设置路径
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh路径
export ZSH="/Users/liu/.oh-my-zsh"

# 配置语言
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# 设置主题，可以设置为random,https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# ZSH_THEME="robbyrussell"
ZSH_THEME="liu"

# 命令自动纠正
ENABLE_CORRECTION="false"

# 使用其他的路径配置，默认为： $ZSH/custom
# ZSH_CUSTOM=/path/to/new-custom-folder

# 插件配置
# 标准插件位置： ~/.oh-my-zsh/plugins/*，个性化插件位置加到： ~/.oh-my-zsh/custom/plugins/
plugins=(
        # git
        zsh-syntax-highlighting
        zsh-autosuggestions
        # emoji
        # battery
        jump
        # web-search
        # extract
        # nmap
        # osx修改为macos
        macos
        redis-cli
        # encode64
        urltools
        python
        pip
        # copydir
        # copyfile
        jsontools
        # vi-mode
        # zsh_reload被删除，使用omz reload或者exec zsh
        colored-man-pages
        safe-paste
        zsh-interactive-cd
        git-open
)

source $ZSH/oh-my-zsh.sh

# 将这些页面也变成彩色,配合colored-man-page使用
# colored git help clone

# 用户配置
# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias "src=omz reload"

# 别名设置
#**********************************************************************************
# 路径快捷进入
alias "liu=cd ~/Desktop/liu"
alias "liuai=cd ~/Desktop/liu/liu_aistuff"
alias "blog=cd ~/Desktop/liu/blog"
alias "mmac=cd ~/Desktop/mac"
alias "desktop=cd ~/Desktop"
alias "snippet=cd ~/.vim/bundle/vim-snippets/snippets"

alias "hcm=cd ~/Desktop/liu/hcm"
alias "hcm_core=cd ~/Desktop/liu/hcm/hcm_core"
alias "hcm_cloud=cd ~/Desktop/liu/hcm/hcm_cloud"

alias "tmp=cd /tmp"

# 使用vscode打开文件夹, vscode ./
alias vscode='open -a /Applications/Visual\ Studio\ Code.app/'
# 使用pycharm打开文件夹, pycharm ./
alias pycharm='open -a /Applications/Pycharm.app'
# 使用webstorm打开文件夹, webstorm ./
alias webstorm='open -a /Applications/WebStorm.app'
# 使用sublime text打开文件夹
alias sublime='open -a /Applications/Sublime\ Text.app'
# 使用keka解压文件
alias keka='open -a /Applications/Keka.app'
# 使用typora打开markdown文件
alias typora='open -a /Applications/Typora.app'

# 打开常用网址
alias sites='~/Desktop/liu/tools/open_sites.sh'

# 启动hcm_cloud和结束hcm_cloud相关服务
alias "startw=~/Desktop/liu/hcm/start_work.sh"
alias "stopw=~/Desktop/liu/hcm/stop_work.sh"

# c++简单编译为oout并运行
alias "crun=~/Desktop/liu/tools/crun.sh"

# git三部曲简单版本,gitp "add"
alias "gitp=~/Desktop/liu/tools/git_push.sh"
alias "gitpull=~/Desktop/liu/tools/git_pull.sh"

alias "ipython=IPython"

alias "j=jump"
alias "tree=tree -N"  # 去除中文乱码的影响

# 文件列表展示，按照最近修改顺序排列
alias "lse=exa -lar --color=always --sort=modified"
alias "le=exa -lhaBgb --git"

# 展示当前目录下的各个文件或者文件夹占用空间
alias "duc=du -sh *;du -sh .*;du -sh"
alias "dus=(du -s *;du -s .*) | sort -n"

# git快捷使用,特定格式查看本人的历史提交
alias "worklog=~/Desktop/liu/tools/log_work.sh"

# 查看某个分支是基于哪个分支建立的
alias "origin-branch=~/Desktop/liu/tools/origin_branch.sh"

# 删除前确认
# alias "rm=rm -i"

# 更加便捷的目录导航，查看当前shell中历史访问过的目录
# 默认～1， 这种数字键来导航到历史的目录中,现可以使用数字键直接导航
alias "d=dirs -v"

# vfzf快捷键
alias "vf=vfzf"

# 快速使用doctest
alias "doctest=~/Desktop/liu/tools/doctest.sh"

# 快速进入数据库
alias "mycore=~/Desktop/liu/tools/mycli_core.sh"

# 将文件转换为一行
alias "oneline=~/Desktop/liu/tools/one_line.py"

# 清除dns缓存
alias "killdns=sudo killall -HUP mDNSResponder"

# 清除当前目录的.pyc和.pyo文件以及__pyc__目录
alias "pycdelete=~/Desktop/liu/tools/delete_pyc.sh"

# 返回指定文件的详细路径
alias "path=~/Desktop/liu/tools/path.sh"

# 将json字符串快速格式化并输入和剪贴板
alias "jsonq=~/Desktop/liu/tools/json_copy.sh"

# 显示和隐藏finder中的.git目录
alias "showgit=defaults write com.apple.finder AppleShowAllFiles TRUE & killall Finder"
alias "hidegit=defaults write com.apple.finder AppleShowAllFiles FALSE & killall Finder"

# 假装很忙
alias "genact=/Users/liu/Desktop/liu/tools/genact-v0.11.0-macos-x86_64"

# hexo命令简化
alias "hexo=npx hexo"

# 查询我的ip
alias "myip=curl ipinfo.io"

# 查看当前目录下的所有node modules, 可以将其删除
alias "npkill=npx npkill"

# 强制立即关机，针对一般关机无效的情况
alias "forceshut=sudo shutdown -h now"

# 系统命令，用于监听wifi的登录信息，eg: airport en0 sniff 157
alias "airport=sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# 将文件由指定编码转换为另一个编码
# alias "iconv2=~/Desktop/liu/tools/iconv_trans.sh"

# the fuck命令
# eval $(thefuck --alias fuck)

# git diff的优美化
alias "git-diffs=git diff | git-split-diffs --color | less -RFX"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# fzf配置
#**********************************************************************************

export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd -t d . "

# fzf文件预览
alias pp='fzf --preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"'"

# 快速使用vim和cd 
alias dfzf="cd \$(find * -type d | fzf)"
alias vfzf="vim \$(fzf)"

# homebrew设置
#**********************************************************************************
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles  # 更改brew源
export HOMEBREW_NO_AUTO_UPDATE=true  # 设置不自动更新

# java配置
#**********************************************************************************
# todo:


# go语言配置
#**********************************************************************************
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct  # 配置go模块代理


# flutter配置
#**********************************************************************************
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn


# rabbitmq配置
#**********************************************************************************
PATH=$PATH:/usr/local/sbin  # 使用rabbitmq-server启动服务


# starship配置
# 配置文件位置：～/.config/starship.toml
#**********************************************************************************
# eval "$(starship init zsh)"


# jill配置
#**********************************************************************************
PATH=$PATH:/Users/liu/.local/bin


# ruby配置
#**********************************************************************************
alias "ruby_serve=ruby -run -e httpd . -p 8000"  # 将当前目录运行于http服务


# jenv配置
#**********************************************************************************
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# node配置
#**********************************************************************************
# export NODE_PATH=/usr/local/Cellar/node/15.11.0/lib/node_modules  # 配置module的默认地址
export PATH=/usr/local/Cellar/node/15.11.0/bin:$PATH  # 配置node安装模块命令环境变量,使用npm prefix -g知道路径


# bat配置
#**********************************************************************************
export BAT_THEME="Dracula"


# 其他配置
#**********************************************************************************
# 引用配置
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# 配置nnn文件管理器
# if [ -f /Users/liu/.config/nnn/nnn.zshrc ]; then
#     source /Users/liu/.config/nnn/nnn.zshrc
# fi

# 使用neovim, 需要替换当前的.vimrc为.origin_vimrc
# alias vim='nvim'
# alias vi='vim'

# 清除dns缓存函数
function refreshDns() {
    echo "开始清除dns"
    sudo killall -HUP mDNSResponder
    echo "清除dns完成"
}


# rm删除的时候使用的是放入垃圾篓
function Trash(){
    Array1=(${*// / })
    for Value1 in ${Array1[*]}
    do  
        if [ -e ${Value1} ]
        then
            Value2=$(python -c 'import os;print(os.path.abspath("'${Value1}'"))')
            osascript -e' 
            tell application "Finder"
            posix path of ((delete posix file "'${Value2}'") as unicode text)
            end tell'
        fi  
    done
}

alias rm=Trash

# bat的时候，如果是图片则使用imgcat工具
function mybat(){
    file=$1
    file_ext=${file##*.}
    img_ext="png jpg jpeg gif"

    if [[ ${img_ext} =~ ${file_ext} ]]
    then
        echo "查看图片"
        imgcat ${file}
    else
        echo "查看文件"
        bat ${file}
    fi
}

alias cat=mybat


# unsetopt XTRACE
# exec 2>&3 3>&-

# mongodb执行路径添加到环境变量
export PATH="/usr/local/opt/mongodb-community@4.2/bin:$PATH"
# 禁用python的字节码(.pyc)文件
# export PYTHONDONTWRITEBYTECODE=1
