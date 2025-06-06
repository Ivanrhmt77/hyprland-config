source /usr/share/cachyos-fish-config/cachyos-config.fish

# Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Fungsi sudocode (karena ada argumen)
# function sudocode
#     sudo EDITOR="code --wait" sudoedit $argv
# end

# Prompt custom
function fish_prompt
    echo -n (set_color --bold brmagenta)
    echo -n (hostname|cut -d. -f1)
    echo -n "> "
    set_color normal 
    set_color brcyan
    echo -n (string replace (echo $HOME) '~' (pwd))
    echo -n (set_color --bold bryellow)
    echo -n " >> "
    set_color normal
end
