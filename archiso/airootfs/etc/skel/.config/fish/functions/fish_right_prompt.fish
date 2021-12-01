# ░█▀▄░█░░░█▀█░█▀▀░█░█░█▀▀
# ░█▀▄░█░░░█░█░█░░░█▀▄░▀▀█
# ░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀

# Time stamp block
function _block_time_stamp -d 'Returns time stamp block'
	set block (set_color -b brcyan -o black)' '(date +%H:%M:%S)' '
	echo $block
end

# Status block
function _block_status -d 'Returns status block'
	if not test $status -eq 0
		set block (set_color -b red yellow)' ✘ '
	else
		set block (set_color -b black green)' ✔ '
	end
	echo $block
end

# Git block
function _block_git -d 'Returns Git block'
	if [ (fish_git_prompt) ]
		set git_bg (_fishblocks_git_status)
		set block (fish_git_prompt)'  '
	else
		set git_bg normal
		set block (fish_git_prompt)
	end
	echo (set_color -b $git_bg -o black) $block
end

# Override fish_default_mode_prompt and use the theme's custom prompt
function fish_default_mode_prompt -d 'Display the default mode for the prompt'
end

function _block_default_mode -d 'Returns the default mode for the prompt'
	set block
	# Check if in vi mode
	if test "$fish_key_bindings" = 'fish_vi_key_bindings'
		or test "$fish_key_bindings" = 'fish_hybrid_key_bindings'
		switch $fish_bind_mode
			case default
				set block (set_color -b brred -o black)' N '
			case insert
				set block (set_color -b brgreen -o black)' I '
			case replace_one
				set block (set_color -b brgreen -o black)' R '
			case replace
				set block (set_color -b brcyan -o black)' R '
			case visual
				set block (set_color -b brmagenta -o black)' V '
		end
	end
	echo $block
end


# Private mode block
function _block_private -d 'Returns private mode block'
	if  not test -z $fish_private_mode
		set block (set_color -b black white)' 﫸'
	else
		set block
	end
	echo $block
end

# ░█▀▄░▀█▀░█▀▀░█░█░▀█▀░░░░░█░█░█▀█░█▀█░█▀▄░░░█▀█░█▀▄░█▀█░█▄█░█▀█░▀█▀
# ░█▀▄░░█░░█░█░█▀█░░█░░▄▄▄░█▀█░█▀█░█░█░█░█░░░█▀▀░█▀▄░█░█░█░█░█▀▀░░█░
# ░▀░▀░▀▀▀░▀▀▀░▀░▀░░▀░░░░░░▀░▀░▀░▀░▀░▀░▀▀░░░░▀░░░▀░▀░▀▀▀░▀░▀░▀░░░░▀░

# Right-hand prompt
function fish_right_prompt -d 'Right-hand prompt'
	echo -ne (_block_status)(_block_git)(_block_time_stamp)(_block_default_mode)(_block_private)(set_color normal)
end
