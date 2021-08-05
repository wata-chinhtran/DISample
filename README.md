# DISample
DISample is internal project for support build modular architecture.It's inject two external module: Login Modular & Product Modular 


How's to install: 

#1. Clone main source:https://github.com/wata-chinhtran/MainModuleExample.git </br>
#2  git submodule update --init --recursive  </br>
#3. Pod install </br>

Happy Coding

<img src= "https://github.com/phoenixit99/DISample/blob/master/di_sample.png" />

# How's to setup project with submodules? Here is step by steps for setup:
1/ Create a repo as Main module
2/ Create file .gitmodules
3/ Create some repos as Submodule
4/ Add submodule with command line: "git submodule add <remote_url> <destination_folder>" refer at: https://devconnected.com/how-to-add-and-update-git-submodules/
5/ Check submodule status with command line: "git ls-files --stage | grep 160000"

# The 3-steps removal process would then be:
1. git submodule deinit -f -- {submodule_name}
2. rm -rf .git/modules/{submodule_name}
3. git rm -f {submodule_name}
# Note: {submodule_name} (no trailing slash)

# or, if you want to leave it in your working tree and have done step 0
3.   git rm --cached {submodule_name}
