function fish_greeting

end

clear

#if [ $TERM = xterm ]
#or [ $TERM = rxvt-unicode-256color ]
#    neofetch
#end
#
#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR = 1
#    	exec startx
#	end
#endG

set -x QT_QPA_PLATFORMTHEME "qt5ct"

set -gx EDITOR /usr/bin/vim

function fish_prompt
  echo (set_color -o $fish_color_cwd)(whoami)@(hostname)(set_color normal):(set_color blue)(prompt_pwd)(set_color normal)\$\ 
end
