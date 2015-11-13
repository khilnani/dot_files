config
-----------

- `git config --global user.name ""`
- `git config --global user.email ""`
- `git config --global color.ui true`
- `git config --global --edit`
- `git config --global credential.helper cache`
- `git config --global credential.helper "cache --timeout=3600"`
- `git config --global credential.helper store`

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
