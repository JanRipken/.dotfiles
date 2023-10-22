# Install on a new System
```bash
alias dotfiles="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
git clone --bare https://github.com/JanRipken/.dotfiles.git $HOME/.cfg
dotfiles checkout
if ["§?" -gt 0 ]
then
  mkdir $HOME/dotfiles.bup
  dotfiles checkout 2>&1 | grep "^[[:space:]]" \
  | xargs -I{} mv -v {} $HOME/.dotfiles.bup/{}
fi
dotfiles config --local status.showUntrackedFiles no

dotfiles submodule update --init
```
  
