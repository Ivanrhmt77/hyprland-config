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
    set_color magenta
    echo -n "["(hostname|cut -d. -f1) "]\$ "
    set_color normal
end
