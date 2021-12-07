#### INITIAL SETUP #####
#
# 1. Install oh-my-zsh (https://github.com/ohmyzsh/ohmyzsh)
# 2. Install required fonts (https://medium.com/featurepreneur/how-to-apply-agnoster-theme-in-mac-zshrc-876f3baf8bf)
# 3. Install dracula theme (https://draculatheme.com/iterm)
# 4. Install syntax highlighting (https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
# 5. Install autosuggestions (https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
# 6. Install completions (https://github.com/zsh-users/zsh-completions)
#
#### END INITIAL SETUP ####


#### OH MY ZSH CONFIG ####
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
    git 
    macos
    zsh-autosuggestions
    zsh-completions
)
autoload -U compinit && compinit
source $HOME/.zsh-extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
#### END OH MY ZSH CONFIG ####


#### ALIASE ####
alias ll="ls -la -G"
alias g="git"
alias zshconfig="code ~/.zshrc"
alias o="open ."
#### END ALIASE ####


#### FUNCTIONS ####
function md() {
	mkdir -p "$@" && cd "$@"
}
#### END FUNCTIONS #####


#### GIT DUET ####
alias git='nocorrect git'
export GIT_DUET_CO_AUTHORED_BY=1
#### END GIT DUET ####


#### SDK MAN ####
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
#### END SDK MAN ####


#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
