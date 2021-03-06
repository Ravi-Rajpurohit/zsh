
CODESTATS_API_KEY="<Your Api Key here>"

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load https://gitlab.com/code-stats/code-stats-zsh.git
    zgen load https://github.com/zsh-users/zsh-autosuggestions.git
    #zgen load /path/to/super-secret-private-plugin

    # bulk load
    #zgen loadall <<EOPLUGINS
    #    zsh-users/zsh-history-substring-search
    #   /path/to/local/plugin
#EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load bhilburn/powerlevel9k powerlevel9k

    # save all to init script
    zgen save
    
fi
