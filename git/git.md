config
-----------

- `git config --global user.name ""`
- `git config --global user.email ""`
- `git config --global color.ui true`
- `git config --global --edit`
- `git config --global credential.helper cache`
- `git config --global credential.helper "cache --timeout=3600"`
- `git config --global credential.helper store`

----------
- `ssh-keygen -t rsa -b 4096 -C "EMAIL"`
- `eval "$(ssh-agent -s)"` - Start SSH Agent
- `ssh-add ~/.ssh/id_rsa`
- Add `~/.ssh/id_rsa.pub` to Github account
