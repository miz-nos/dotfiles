# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#入力停止・再開をオフ
stty -ixon -ixoff

#
alias  dc='cd'

# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi


# User specific aliases and functions
# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias  ls='ls -FG'
alias  lsa='ls -laFG'
alias  cdm='cd /web/homes/unit/mizunos/'
alias  cdl='cd /web/logs/homes/unit/'
alias  bas='vim /home/mizunos/.bashrc'
alias  vis='vim /home/mizunos/.vimrc'
alias  fig='vim ~/.ssh/config'
alias  hosts='vim /private/etc/hosts'
alias  tailme='tail -f /web/logs/homes/unit/mizunos.error_log_php'
alias  tailma='tail -f /web/logs/homes/unit/mizunos.access_log'
alias  gits='git status'
alias  gitl='git log'

alias  nerd='vim -c NERDTree'
