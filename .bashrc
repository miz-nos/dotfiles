# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions


#入力停止・再開をオフ
stty -ixon -ixoff

#source ~/plugin/git-completion.bash


# stty stop undef
alias  nerd='vim -c NERDTree'
alias  lsa='ls -la'
alias  cdm='cd /web/homes/unit/mizunos/'
alias  cdl='cd /web/logs/homes/unit/'
alias  bas='vim /home/mizunos/.bashrc'
alias  vis='vim /home/mizunos/.vimrc'
alias  tailme='tail -f /web/logs/homes/unit/mizunos.error_log_php'
alias  tailma='tail -f /web/logs/homes/unit/mizunos.access_log'
alias  gits='git status'
alias  gitl='git log'

