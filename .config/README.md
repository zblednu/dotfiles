# Dotfiles (Bare Git Repo)

Manage dotfiles with a bare git repository — no symlinks, no extra tools.

Reference: https://www.atlassian.com/git/tutorials/dotfiles

## Setup (first time)

```bash
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

## Usage

```bash
dotfiles add ~/.config/some-file
dotfiles commit -m "add some-file"
dotfiles push
```

## Setup on a new machine

```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare <repo-url> $HOME/.dotfiles
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

If checkout fails due to existing files, back them up first:

```bash
dotfiles checkout 2>&1 | grep "^\s" | sed 's/^\s*//' | xargs -I{} mv {} {}.bak
dotfiles checkout
```
