> Snippets from http://git-scm.com/book/

Create Repo from Current Project
---------------

Create Local Project in `sample_project`

- `git init`
- `git add .`
- `git commit -am 'initial commit'`

Create Remote

- `git clone --bare . ~/DIR/git_projects/sample_project.git`

Add Remote to Local 

- `git remote add sample_project ~/DIR/git_projects/sample_project.git`
- `git remote add origin https://github.com/username/Hello-World.git`




User Configuration
---------------

* `git config user.name "USER"`
* `git config user.email "EMAIL"`
* `git config --global --edit`
* `git config --global color.ui true`
* `git config --global push.default matching`
* `git config --global core.excludesfile '~/.gitignore`
* `git config --global credential.helper cache`
* `git config --global credential.helper "cache --timeout=3600"`
* `git config --global credential.helper store`


ssh
----------
- `ssh-keygen -t rsa -b 4096 -C "EMAIL"`
- `eval "$(ssh-agent -s)"` - Start SSH Agent
- `ssh-add ~/.ssh/id_rsa`
- Add `~/.ssh/id_rsa.pub` to Github account
- Test `ssh -T git@github.com`
- `git clone git@github.com:khilnani/dot_files.git`

https > ssh
-----------
- Check current remote urls
  - `git remote -v`
  ```
  # origin  https://github.com/USERNAME/REPOSITORY.git (fetch)
  # origin  https://github.com/USERNAME/REPOSITORY.git (push)
  ```
- Change your remote's URL from HTTPS to SSH with the git remote set-url command.
  - `git remote set-url origin git@github.com:USERNAME/OTHERREPOSITORY.git`
- Verify that the remote URL has changed.
  - `git remote -v`
  ```
  # origin  git@github.com:USERNAME/OTHERREPOSITORY.git (fetch)
  # origin  git@github.com:USERNAME/OTHERREPOSITORY.git (push)
  ```


Tags
---------------

* List - `git tag`
* Create - `git tag -a "0.1" -m "Message"`
* Push - `git push origin --tags`
* Push specific - `git push origin 0.1`
* Delete `git tag -d "0.25"` and then `git push origin :refs/tags/0.25`
* Rename
  * Create alias `git tag NEW OLD`
  * Delete old `git tag -d OLD`
  * Delete Ref `git push origin :refs/tags/OLD`
  * Push - `git push origin --tags`

Password Caching
----------------

- https://help.github.com/articles/set-up-git#password-caching
- https://help.github.com/articles/updating-credentials-from-the-osx-keychain
- Run `git config credential.helper store` and then run a `git push`.
  - From https://www.kernel.org/pub/software/scm/git/docs/git-credential-store.html
  
Stash
---------------

* Create stash of uncommited changes - `git stash`
* List - `git stash list`
* Apply dont remove from stash list - `git stash apply`
* Apply and remove - `git stash pop`
* Reapply - `git stash apply --index`
* Remove from Stash list - `git stash drop [stash@{0}]`
* Unapply - `git stash show -p stash@{0} | git apply -R`  or `git stash show -p | git apply -R`

Branch
---------------

* Create - `git branch NAME` (rm -rf to delete old branch files that will exist)
* Create Empty Branch - `git checkout --orphan NAME`
* Push - `git push origin NAME`
* Switch - `git checkout NAME`
* List - `git branch`
* Delete Local - `git branch -d NAME`
* Delete on Remote - `git push origin :NAME`
* Delete on Remote - `git push origin --delete NAME`
* Rename/Move branch
  * `git branch -m OLD NEW`
  * `git push origin NEW:refs/heads/NEW`

Forks
---------------

* Add upstream (original repo forked from) 
  * `git remote add upstream https://github.com/otheruser/repo.git`
  * Validate with `git remote -v`
* Bring down changes `git fetch upstream` creates a new branch `upstream/master`
* Merge
  * Ensure on master `git checkout master`
  * Merge `git merge upstream/master`
 
