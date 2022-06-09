# zcompare() {
#   if [[ -s ${1} && ( ! -s ${1}.zwc || ${1} -nt ${1}.zwc) ]]; then
#     zcompile ${1}
#   fi
# }

# emulate zsh -o extended_glob -c "local files=($ZDOTDIR/**/*.zsh)"
# for file in "${files[@]}"; do
#   zcompare $file
# done

# zcompare .zshrc
