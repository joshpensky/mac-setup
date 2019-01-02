git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[32m\]\u\[\033[37m\]:\[\033[1;34m\]\w\[\033[0;35m\]\$(git_branch)\[\033[1;33m\] \$ \[\033[0;37m\]"

export VISUAL=vim
export EDITOR="$VISUAL"

md() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

uuid() {
  python -c 'import sys,uuid; sys.stdout.write(uuid.uuid4().hex)' | pbcopy && pbpaste && echo
}

tarzip() {
  tar -zcvf "$1" "$2"
}

tarunzip() {
  tar -xzf "$1"
}
