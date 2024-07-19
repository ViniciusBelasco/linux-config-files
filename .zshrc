# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
export COLORTERM=truecolor
export TERM=screen-256color

. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

# WSL 2 specific settings.
if grep -q "microsoft" /proc/version &>/dev/null; then
    # Requires: https://sourceforge.net/projects/vcxsrv/ (or alternative)
    export DISPLAY="$(/sbin/ip route | awk '/default/ { print $3 }'):0"

    # Allows your gpg passphrase prompt to spawn (useful for signing commits).
    export GPG_TTY=$(tty)
fi

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

setopt auto_cd       # cd by typing directory name if it's not a command

alias ll="exa -la --icons"
alias cat="bat --style=auto"
alias htags="ctags --recurse --verbose --languages=harbour new/ src/ include/ frente/ programas_externos/"

# Git aliases
alias gs="git status"
alias gst="git stash"
alias gstp="git stash pop"
alias gl="git log --stat"
alias gb="git branch"
alias gw="git switch"
alias ga="git add"
alias gd="git diff"
alias gds="git diff --staged"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
