Purpose
Keep this short, high-signal set of instructions for agents working on this dotfiles repo. Only include facts an agent would likely miss.

Quick Deploy (the common case)
- Always run from the repo root (the README expects this to be at ~/.dotfiles):
  cd ~/.dotfiles && stow common
- To deploy both packages in one go:
  cd ~/.dotfiles && stow common arch
- To remove a package's symlinks:
  cd ~/.dotfiles && stow -D common

Important Behaviours & Gotchas
- stow is idempotent: running the same stow command multiple times is expected and safe.
- The repo uses a .stow-local-ignore file to exclude local items; check it before stowing.
- Do NOT run stow (or any repo commands) as root/with sudo. That can change file ownership in your home directory.
- The directory named arch contains Arch-specific configs. Don't blindly stow it on non-Arch machines.
- There are no builds/tests/typechecks in this repo — it's configuration files (nvim, zsh, tmux, alacritty, i3, etc.).

Git, Commits, and Secrets
- The repo contains a .git directory. Avoid touching .git internals or hooks unless explicitly asked.
- Do not commit secrets or machine-specific private files. If you find credentials, ask before committing or push.

Updating
- Pull updates and re-run stow to apply changes:
  git pull --ff-only
  cd ~/.dotfiles && stow common arch

If in doubt
- Read README.md (it contains the canonical stow example).
- Inspect .stow-local-ignore and package folders (common, arch) before making changes.
