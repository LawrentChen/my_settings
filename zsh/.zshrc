source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle and more.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# omit user name
DEFAULT_USER='chenzhihao'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/chenzhihao/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/chenzhihao/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/chenzhihao/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/chenzhihao/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# add customize shell script path
export PATH=$PATH:~/bin
