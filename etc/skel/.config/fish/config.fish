
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/arghya/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

alias neof='neofetch --ascii_distro Mac'

alias upgrade='sudo pacman -Syyu'                 # update only standard pkgs
alias yupdate='yay -Sua --noconfirm'              # update only AUR pkgs (yay)
alias yupgrade='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias parsua='paru -Sua --noconfirm'             # update only AUR pkgs (paru)
alias parsyu='paru -Syu --noconfirm'             # update standard pkgs and AUR pkgs (paru)
alias clsswap='sudo swapoff -a && sudo swapon -a'
alias start='git init'
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_showupstream informative
  set -g __fish_git_prompt_showdirtystate yes
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_char_cleanstate '✔'
  set -g __fish_git_prompt_char_dirtystate '✚'
  set -g __fish_git_prompt_char_invalidstate '✖'
  set -g __fish_git_prompt_char_stagedstate '●'
  set -g __fish_git_prompt_char_stashstate '⚑'
  set -g __fish_git_prompt_char_untrackedfiles '?'
  set -g __fish_git_prompt_char_upstream_ahead ''
  set -g __fish_git_prompt_char_upstream_behind ''
  set -g __fish_git_prompt_char_upstream_diverged 'ﱟ'
  set -g __fish_git_prompt_char_upstream_equal ''
  set -g __fish_git_prompt_char_upstream_prefix ''''

set -g fish_color_command --bold green
set -g fish_color_error red
set -g fish_color_quote yellow
set -g fish_color_param white
set -g fish_pager_color_selected_completion blue

set -g fish_greeting

# neofetch --ascii-distro 'arch_small'
# starship init fish | source
