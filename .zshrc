eval "$(starship init zsh)"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# *** PATH is set in /data/data/com.termux/files/home/.profile && /data/data/com.termux/files/usr/etc/profile ***
emulate sh -c '. ~/.profile'
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
plugins=(fast-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export LESS='-RS'
export RANGER_LOAD_DEFAULT_RC=false
bindkey -v
setopt no_hist_verify
bindkey -M viins '^w' backward-kill-word
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line
bindkey -M viins '^l' vi-forward-blank-word
bindkey -M viins '^[^[' vi-cmd-mode
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins '^[^M' self-insert-unmeta
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
	for c in {a,i}{\',\",\`}; do
		bindkey -M $m $c select-quoted
	done
done

# To use
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround

function exitshell () {
	exit
}
zle -N exitshell
bindkey -M vicmd "qq" exitshell
bindkey -M viins "qq" exitshell

### fasd cache
fasd_cache="$HOME/.fasd-init-zsh"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache"  ]; then
	fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache
source /data/data/com.termux/files/home/.fzf/shell/key-bindings.zsh
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias h='history'
alias j='jobs'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias s='zsh startxfce4_termux.sh'
alias killme='killall -u u0_a294'
alias rep='zsh ~/.config/polybar/launch.sh --forest'
alias rew='nitrogen --restore'
