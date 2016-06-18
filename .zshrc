# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="awesomepanda"

################################################
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias pwdc="pwd | pbcopy"

# git 
alias giac="git init && git add . && gca -m 'init'"


################################################
# Functions
# pbcopy copy taken from: http://brettterpstra.com/2015/04/27/a-universal-clipboard-command-for-bash/?utm_campaign=Mac_Dev_Weekly_5&utm_medium=email&utm_source=Mac%2BDev%2BWeekly
copy() {
	if [[ $1 =~ ^-?[hH] ]]; then
 
		echo "Intelligently copies command results, text file, or raw text to"
		echo "OS X clipboard"
		echo
		echo "Usage: copy [command or text]"
		echo "  or pipe a command: [command] | copy"
		return
	fi
 
	local output
	local res=false
	local tmpfile="${TMPDIR}/copy.$RANDOM.txt"
	local msg=""
 
	if [[ $# == 0 ]]; then
		output=$(cat)
		msg="Input copied to clipboard"
		res=true
	else
		local cmd=""
		for arg in $@; do
			cmd+="\"$(echo -en $arg|sed -E 's/"/\\"/g')\" "
		done
		output=$(eval "$cmd" 2> /dev/null)
		if [[ $? == 0 ]]; then
			msg="Results of command are in the clipboard"
			res=true
		else
			if [[ -f $1 ]]; then
				output=""
				for arg in $@; do
					if [[ -f $arg ]]; then
						type=`file "$arg"|grep -c text`
						if [ $type -gt 0 ]; then
							output+=$(cat $arg)
							msg+="Contents of $arg are in the clipboard.\n"
							res=true
						else
							msg+="File \"$arg\" is not plain text.\n"
						fi
					fi
				done
			else
				output=$@
				msg="Text copied to clipboard"
				res=true
			fi
		fi
	fi
 
	$res && echo -ne "$output" | pbcopy -Prefer txt
	echo -e "$msg"
}

################################################
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=30

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew docker git gem svn npm)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...


# archey wonderful intro to shell
/usr/local/bin/archey -c
