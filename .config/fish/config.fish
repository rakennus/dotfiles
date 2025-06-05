function fish_greeting

end

set -x QT_QPA_PLATFORMTHEME "qt5ct"

set -gx EDITOR /usr/bin/vim

function fish_prompt
    printf '%s%s@%s%s:%s%s%s%s%s$ ' (set_color brgreen) (whoami) (prompt_hostname) (set_color normal) (set_color blue) (prompt_pwd) (set_color red) (fish_git_prompt) (set_color normal)
end
