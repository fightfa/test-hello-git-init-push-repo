CONTIKI_PROJECT = test-hello-git-init-push-repo
SSH_REPOSITORY_PATH=git@github.com:fightfa/test-hello-git-init-push-repo.git
all:
	@echo "in all here\n"

first_commit_m:="first time to push."
commit_m:="default push"
ifneq ($(m),)
first_commit_m=$(m)
commit_m=$(m)
endif
#TODO ºÏ≤ÈSSH_REPOSITORY_PATH
git-init-and-push:
	@echo "Starting to init local git repo and then push to $(SSH_REPOSITORY_PATH)\n" \
	cd $(PWD) &&\
	git init &&\
    git add . && git commit -m $(first_commit_m) &&\
    git remote add origin $(SSH_REPOSITORY_PATH) &&\
    git push origin master

git-push:
	@echo "Starting to push to $(SSH_REPOSITORY_PATH)\nwith commit m=$(commit_m)\n" \
	cd $(PWD) &&\
	git add . && git commit -m $(commit_m) &&\
	git push origin master
