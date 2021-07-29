source $ZDOTDIR/zshrc

# fnm
export PATH=/home/diegob/.fnm:$PATH
eval "`fnm env`"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/diegob/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/diegob/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/diegob/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/diegob/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

