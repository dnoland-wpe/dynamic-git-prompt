<h1> INTRODUCTION

This repo is a self generated script for creating a dynamic prompt that checks for your current working git repo and and writes the active branch to your prompt

<h2> Example output:

If not in a current git repo directory

```
[Mon Dec 17 08:28:02] david.noland-~ >
```

If in a current git repo directory

```
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
[Mon Dec 17 08:28:55] david.noland-~/Documents/GitHub/scratch (master)>
```
<h2> INSTRUCTIONS FOR CONFIGURATION
1. Download file and place in user root directory as filename `.prompt.sh`
2. Customize prompt as you wish in the `.prompt.sh` file, but do not modify the $git_branch variable
3. Add the following line of code to the .bash_profile file:

```
PROMPT_COMMAND="source ~/.prompt.sh 2>/dev/null"
```

4. Execute `source ~/.bash_profile` to reinitialize the prompt
5. Test by going into a git repo on your local machine and execute `git checkout <branch>` and observe the modification.  Execute `git checkout master` to return to the master branch of your repo.
