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
* `git config --global push.default matching`
* `git config --global core.excludesfile '~/.gitignore`

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
 
