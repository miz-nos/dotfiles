# .zshrc


#入力停止・再開をオフ
stty -ixon -ixoff


# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

#export
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH

#miz-nos for keelctl
export GITHUB_TOKEN=7dc03c148bb4533cd2bb504b4d7515a846a3e841

# User specific aliases and functions
# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias  dc='cd'
alias  ls='ls -FG'
alias  lsa='ls -laFG'
alias  bas='vim ~/.bashrc'
alias  vis='vim ~/.vimrc'
alias  sis='vim ~/.ssh/config'
alias  hosts='vim /private/etc/hosts'
alias  gits='git status'
alias  gitl='git log'
alias  nerd='vim -c NERDTree'

#開発サーバ用
#unit-nus
alias  cdm='cd /web/homes/unit/mizunos/'
alias  cdl='cd /web/logs/homes/unit/'
alias  tailme='tail -f /web/logs/homes/unit/mizunos.error_log_php'
alias  tailma='tail -f /web/logs/homes/unit/mizunos.access_log'
#unit-nc
alias  cdm='cd /app/homes/unit/mizunos/NCApplication/'
alias  cdl='cd /app/logs/unit/'

#cdしたらlsする
cdls ()
{
    \cd "$@" && ls
}
alias  cd="cdls"

export PATH="/usr/local/opt/bison/bin:$PATH"
