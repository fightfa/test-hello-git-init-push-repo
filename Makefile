CONTIKI_PROJECT = test-hello-git-init-push-repo

SSH_REPOSITORY_PATH=git@github.com:fightfa/test-hello-git-init-push-repo.git
all:
	@echo "nothing all here\n"

#本makefile提供简便命令行进行初始化仓库或提交仓库。更好的方案是在CLion IDE中使用git工具。

first_commit_m:="first time to push."
commit_m:="default push"
ifneq ($(m),)
first_commit_m=$(m)
commit_m=$(m)
endif
#TODO 检查SSH_REPOSITORY_PATH
.PHONY: git-init-and-push
git-init-and-push:
	@echo "Starting to init local git repo and then push to $(SSH_REPOSITORY_PATH)\n" \
	cd $(PWD) &&\
	git init &&\
    git add . && git commit -m $(first_commit_m) &&\
    git remote add origin $(SSH_REPOSITORY_PATH) &&\
    git push origin master

.PHONY: git-push
git-push:
	@echo "Starting to push to $(SSH_REPOSITORY_PATH)\nwith commit m=$(commit_m)\n" \
	cd $(PWD) &&\
	git add . && git commit -m $(commit_m) &&\
	git push origin master
#TODO bug-warn： 运行make git-push m=comment 后，最后一行报错（不影响提交）： make: *** No rule to make target 'no'。 停止。