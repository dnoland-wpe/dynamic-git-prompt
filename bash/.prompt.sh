#Function to grab current git repo branch
parse_git_branch() {
  git symbolic-ref --short HEAD 2>/dev/null
}

#Execute function assign branch name to a variable
git_check=$(parse_git_branch)

#Conditional check on repo branch and define prompt accordingly
if [[ -z $git_check ]]; then
	export PS1="\e[0;32m[\d \T] \u-\w \e[0;37m> "  # If not in an active git repo
else
	export PS1="\e[0;32m[\d \T] \u-\w \e[0;49;96m($git_check)\e[0;37m> "  # If in an active git repo
fi
