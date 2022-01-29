source ~/.bashrc

export EDITOR=vim

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[34m\]\u\[\033[32m\]@\[\033[31m\]\h \[\033[35m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
