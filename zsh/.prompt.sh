#Function to grab current git repo branch
parse_git_branch() {
  git symbolic-ref --short HEAD 2>/dev/null
}

#Execute function assign branch name to a variable
git_check=$(parse_git_branch)

#Conditional check on repo directory (3 folders back) and branch and define prompt accordingly
if [[ -z $git_check ]]; then
	export PS1="%F{green}%W %t %n - %3 %F{white}> "  # If not in an active git repo
else
	export PS1="%F{green}%W %t %n - %3 %F{white}(%F{cyan}$git_check%F{white}) > "  # If in an active git repo
fi
