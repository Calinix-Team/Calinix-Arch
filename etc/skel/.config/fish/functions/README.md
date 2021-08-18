# fishblocks
A dead simple fishshell prompt.

| Fishblocks Preview |
| --- |
| ![Preview](scrot.webp) |

## Dependencies

+ `fish > 3.1.0`
+ `git`
+ A nerd font. `MesloLGS NF` is recommended.

## Usage

+ Install the dependencies.
+ Clone.
+ Copy the repository's content to `/PATH/TO/FISH/CONFIG/functions/`.

## Features

+ Fast!
+ OS/Distribution icon display.
+ Private mode display.
+ SSH display.
+ Git display with color coding.
+ Previous command status display.
+ Dynamic background color for time display.
+ And many more.

## Extras

+ Colors

	The colors may vary due to the difference of our terminal colors. Here's mine if you want it:

	<details>
		<summary>Click here to show colors</summary>
		
		# Black
		color10		#3D4C5F
		color8		#56687E

		# Red
		color1		#EE4F84
		color9		#F48FB1

		# Green
		color2		#53E2AE
		color10		#A1EFD3

		# Yellow
		color3 		#F1FF52
		color11		#F1FA8C

		# Blue
		color4		#6498EF
		color12		#92B6F4

		# Magenta
		color5		#985EFF
		color13		#BD99FF

		# Cyan
		color6		#24D1E7
		color14		#87DFEB

		# White
		color7		#E5E5E5
		color15		#F8F8F2
			
	</details>

+ Fishshell Git config

	These are the recommended git config for fish. You can put it on your `config.fish`.

	<details>
		<summary>Click here to show Git config</summary>
		
		set -g __fish_git_prompt_show_informative_status 1
		set -g __fish_git_prompt_showupstream informative
		set -g __fish_git_prompt_showdirtystate yes
		set -g __fish_git_prompt_char_stateseparator ' '
		set -g __fish_git_prompt_char_cleanstate '✔'
		set -g __fish_git_prompt_char_dirtystate '✚'
		set -g __fish_git_prompt_char_invalidstate '✖'
		set -g __fish_git_prompt_char_stagedstate '●'
		set -g __fish_git_prompt_char_stashstate '⚑'
		set -g __fish_git_prompt_char_untrackedfiles '?'
		set -g __fish_git_prompt_char_upstream_ahead ''
		set -g __fish_git_prompt_char_upstream_behind ''
		set -g __fish_git_prompt_char_upstream_diverged 'ﱟ'
		set -g __fish_git_prompt_char_upstream_equal ''
		set -g __fish_git_prompt_char_upstream_prefix ''''
		
	</details>

## TODOs

The roadmap for this project. PRs are welcome!

+ [ ] Test OS/Distribution icon display on different distros and platforms.
+ [x] Improve Git display.
+ [x] Refactor/Modularized fish prompt script.

## Contribute

Fork the project, do some improvement or modifications, then feel free to submit a pull request! Bug reports are also welcome!
