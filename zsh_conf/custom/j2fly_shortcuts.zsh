# Tunnels
# -------
alias tunnel_bbg_production_bolstr='ssh -L 54321:db01.c45431.blueboxgrid.com:5432 db'
alias tunnel_trista='ssh -L 3307:tristakleinphotography.com:3306 trista'

# DB Stuff
# --------
# PG
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgtail='tail -f /usr/local/var/postgres/server.log'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
# MySQL
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
# Both
alias startdbs='pgstart;mysqlstart'
alias stopdbs='pgstop;mysqlstop'
alias restartdbs='stopdbs;startdbs'
alias redis='redis-server /usr/local/etc/redis.conf'

# System Level
# ------------
alias goodbye='sudo shutdown -r now'
alias uldb='sudo /usr/libexec/locate.updatedb' #update the location database
alias flush_dns='dscacheutil -flushcache'
alias fixbrew='sudo chown -R `whoami` /usr/local'
alias fixpow='rvm env . -- --env > .powenv'
alias c='clear'
alias clera='clear'
alias rm_sym='find . ! -name . -prune -type l|xargs rm'

# Directories
alias l='ls -lah'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ipconfig getifaddr en0; echo; ipconfig getifaddr en1"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias desktop_white="open /Users/macpro/Dropbox/Pictures/Desktop\ Backgrounds/White\ Desktop\ Background.app"

alias spotoff="sudo mdutil -a -i off"  # Disable Spotlight
alias spoton="sudo mdutil -a -i on"    # Enable Spotlight

# Git
# -----------------
alias gg='git goggles'
# alias ggc='git goggles codereview'
alias ggc='git log -p --reverse master..'
alias ggcc='git goggles codereview complete'
alias glg='git log --no-merges --pretty=format:"%Cgreen%h%Creset%x09%an%x09%Cblue%ar%Creset%x09%s"'
alias glgl='git log --no-merges --reverse --pretty=format:"%Cgreen%h%Creset%x09%an%x09%Cblue%ar%Creset%x09%s"'
alias gwc='git whatchanged --no-merges --pretty=format:"%Cgreen%h%Creset%x09%an%x09%Cblue%ar%Creset%x09%s"'
alias gt='git tag'
alias gtl='git tag -l'
alias gtlr='git ls-remote --tags'
alias gbm='git branch --merged'
alias gbnm='git branch --no-merged'
alias gmt='git mergetool'
alias co_remote='/rails/gg_utility/git_goggles_ruby_checkout.rb'
alias prune_merged='/rails/gg_utility/git_goggles_prune_merged.rb'
alias ptl='bundle exec rake pt:list'
alias pt='pivotal_tools --project-index=1'
alias ptc='cat /rails/bolstr/bolstr/doc/current_pt_story.txt'
alias gmnff='git merge --no-edit --no-ff $*'
compdef gmnff=git
alias mmts='git checkout staging; git merge --no-edit --no-ff master; git push; git push --tags'
alias mmtp='git checkout production; git merge --no-edit --no-ff master; git push; git push --tags'
alias mmte='mmts;mmtp'
alias gbc='git rev-parse --abbrev-ref HEAD 2>/dev/null | cut -d"/" -f 2 | tr -d "\n" | pbcopy'
alias gp='git push;git push --tags'
alias gs='git stash'
alias gsp='git stash pop'
alias gd='git diff'
alias zff='zenflow feature finish'

# Nocorrect Aliases
# -----------------
unsetopt correct_all

# Apps
# ----
alias pandora='pianobar'
alias tl='tmux ls'
alias ta='tmux attach -t $*'
alias tk='tmux kill-session -t $*'
alias to='tmuxinator open $*'
alias ts='tmuxinator start $@'
alias ml='tmuxinator list'
alias rp='relish push bolstr/rails-app'
alias push_cukes='bundle exec rake gitnesse:push'

# Documentation Shortcuts
alias docs='cd /rails/bolstr/docs; subl .; open /Applications/DevDocs.app; b guard'

# Project Shortcuts
# -----------------
alias b_app='cd /rails/bolstr/bolstr; setTerminalText 0 Bolstr App; tmuxinator start b_app'
alias b_cms='cd /rails/bolstr/public; setTerminalText 0 Bolstr CMS; tmuxinator start b_cms'
alias fph='cd /rails/fans-park-here; setTerminalText 0 FPH; tmuxinator start fph'
alias ligature='cd /rails/github/ligature; setTerminalText 0 Ligature; tmuxinator start ligature'
alias mvc='cd /rails/clients/moulding_visions; setTerminalText 0 MVC; tmuxinator start mvc'
alias trista='cd /rails/clients/trista; setTerminalText 0 TRISTA; tmuxinator start trista'
alias allovue='cd /rails/allovue; setTerminalText 0 Allovue; tmuxinator start allovue'
alias mailtank='cd /rails/mailtank-enduser; setTerminalText 0 Mailtank; tmuxinator start mailtank'
alias cohealo='cd /rails/scheduler; setTerminalText 0 Cohealo; tmuxinator start cohealo'

alias bolstr='cd /rails/bolstr/bolstr'
alias public='cd /rails/bolstr/public'
alias dot='cd ~/.dotfiles'
alias pdot='cd ~/.private-dotfiles'
alias gcopy='cd /rails/bolstr; trash bolstr_copy; cp -r bolstr bolstr_copy; cd bolstr_copy;'

alias dev='git checkout development'
alias sta='git checkout staging'
alias prd='git checkout production'
alias mas='git checkout master'

# VIM
# ---
#alias vim='mvim -v'
alias vin='vim +RecentNotes'
alias vbi='vim +BundleInstall +qall'
alias vbe='vim ~/.vim/vundle'
alias vbc='vim +BundleClean +qall'
alias gn='python /rails/github/geeknote/geeknote.py'

alias ev='cd /rails/github/dev_setup_gist; vim vimrc_main'
alias evb='cd ~/.vim/bundles;'
alias jonvim='vim ~/Dropbox/Documents/Web\ Development/Vim/jons_vim_guide.txt'

# RAILS
# -----
# you need to use bundle exec before each command you run in a app controled by
# bundler so this alias helps make that easier
alias b='bundle exec $*'
alias p='bundle exec powder $*'
alias rdm='bundle exec rake db:migrate'
alias rc='bundle exec rails console'
alias rdbc='rails dbconsole'

# CAPISTRANO
# ----------
alias ds='git checkout staging; bundle exec cap deploy'
alias dsm='git checkout staging; bundle exec cap deploy:migrations'
alias dp='git checkout production; bundle exec cap production deploy'
alias dpm='git checkout production; bundle exec cap production deploy:migrations'

# PAIR
#-----
alias unpair='gh-auth remove $*'

alias webserver='python -m SimpleHTTPServer'

# $1 = type; 0 - both, 1 - tab, 2 - title
# rest = text
setTerminalText () {
    # echo works in bash & zsh
    local mode=$1 ; shift
    echo -ne "\033]$mode;$@\007"
}
nt         () { setTerminalText 0 $@; }
stt_tab    () { setTerminalText 1 $@; }
stt_title  () { setTerminalText 2 $@; }

# Store an empty TODO: commit in git log that needs to be rebased out. Short,
# quick reminders
todo() {
  git commit --allow-empty -m "TODO: $*"
}

# after installing vim, this simplifies getting my setup symlinked back to the
# dev_setup_gist
symlink_dev_setup() {
  rm /Users/jon/.vimrc
  rm /Users/jon/.vim/vimrc_main
  rm /Users/jon/.vim/vundle
  rm /Users/jon/.vim/snippets/_.snippets
  rm /Users/jon/.tmux.conf

  ln -nsf /rails/github/dev_setup_gist/vimrc /Users/jon/.vimrc
  ln -nsf /rails/github/dev_setup_gist/vimrc_main /Users/jon/.vim/
  ln -nsf /rails/github/dev_setup_gist/vundle /Users/jon/.vim
  ln -nsf /rails/github/dev_setup_gist/snippets /Users/jon/.vim/snippets/_.snippets
  ln -nsf /rails/github/dev_setup_gist/tmux.conf /Users/jon/.tmux.conf
}

# Edit this file
alias ea='cd ~/.oh-my-zsh/custom/; vim j2fly_shortcuts.zsh'

#Source this file
alias aup='source /Users/jon/.oh-my-zsh/custom/j2fly_shortcuts.zsh'



typeset -Ag abbreviations

abbreviations=(
    "em"      "vim \`git status --porcelain | sed -ne 's/^ M //p' -ne 's/^?? //p' | tr '\n' ' '\`"
)

magic-abbrev-expand() {
     local left prefix
     left=$(echo -nE "$LBUFFER" | sed -e "s/[_a-zA-Z0-9]*$//")
     prefix=$(echo -nE "$LBUFFER" | sed -e "s/.*[^_a-zA-Z0-9]\([_a-zA-Z0-9]*\)$/\1/")
     LBUFFER=$left${abbreviations[$prefix]:-$prefix}" "
}

no-magic-abbrev-expand() {
    LBUFFER+=' '
}

zle -N magic-abbrev-expand
zle -N no-magic-abbrev-expand
bindkey   " "    magic-abbrev-expand
bindkey   "^x "  no-magic-abbrev-expand
