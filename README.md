# MainModuleExample
MainModuleExample is internal project for support build modular architecture.It's inject two external module: Common & Feature Modular 

How's to install: 

1. Clone main source:https://github.com/wata-chinhtran/MainModuleExample.git
2. git submodule update --init --recursive , if you want change to latest commit of submodule then use "git submodule update --remote --merge"
3. Pod install

-- Workflow:

<img src= "https://github.com/wata-chinhtran/MainModuleExample/blob/master/MainModuleEx.jpg" />

# How's to setup project with submodules? Here is step by steps for setup:
1. Create a repo as Main module
2. Create file .gitmodules
3. Create some repos as Submodule
4. Add submodule with command line: "git submodule add <remote_url> <destination_folder>" refer at: https://devconnected.com/how-to-add-and-update-git-submodules/
5. Check submodule status with command line: "git ls-files --stage | grep 160000"

# The 3-steps removal process would then be:
1. git submodule deinit -f -- {submodule_name}
2. rm -rf .git/modules/{submodule_name}
3. git rm -f {submodule_name} => Note: {submodule_name} (no trailing slash)
4. git rm --cached {submodule_name}

# How's to install submodule via cocoapods:
=> pod '{submodule_name}', :path => '{submodule_path}'
