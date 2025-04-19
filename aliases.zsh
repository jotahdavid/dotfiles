# Alias to PHPStorm
function pstorm() {
  phpstorm "$@" 1>/dev/null 2>/dev/null & disown
}

# Alias to gcc compiler
function c() {
  if [[ $1 == *.c ]]; then
    1="${1/.c}"
  fi
  mkdir ./bin -p && gcc $1.c -o bin/$1 && bin/$1;
}

# Alias to g++ compiler
function cppc() {
  if [[ $1 == *.cpp ]]; then
    1="${1/.cpp}"
  fi
  mkdir ./bin -p && g++ $1.cpp -o bin/$1 && bin/$1;
}

# Command to check process RAM consume
function mem() {
  maxLineLen=${2:-110}
  ps -eo rss,vsz,pid,euser,args:100 --sort %mem | grep -v grep | grep -i $@ | cut -c -$maxLineLen | awk '{printf $1/1024 "MB"; $1=""; print }'
}

# Using colorls instead ls
alias ls='colorls -A --group-directories-first'
alias ll='colorls -lA --group-directories-first'

# Alias to ping Google
alias pingoogle='ping -O 8.8.8.8'

# Alias to show all using ports
alias ports='ss -lptn'

alias pa="php artisan"
alias nrd="npm run dev"
alias nrb="npm run build"
