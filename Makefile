CONTIKI_PROJECT = test-hello-git-init-push-repo
SSH_REPOSITORY_PATH=git@github.com:fightfa/test-hello-git-init-push-repo.git
all:
	@echo "in all here\n"

m?="first time to push."
git-init-and-push:
	#TODO ºÏ≤ÈSSH_REPOSITORY_PATH
	@echo "Starting to init local git repo and then push to $(SSH_REPOSITORY_PATH)\n" \
	cd $(PWD) &&\
	git init &&\
    git add . && git commit -m $(m) &&\
    git remote add origin $(SSH_REPOSITORY_PATH) &&\
    git push origin master
git-push:
	m?="push."
	@echo "Starting to push to $(SSH_REPOSITORY_PATH)\n" \
	cd $(PWD) &&\
	git commit -m $(m) &&\
	git remote add origin $(SSH_REPOSITORY_PATH) &&\
	git push origin master

#    git create -d "$(CONTIKI_PROJECT)" &&\