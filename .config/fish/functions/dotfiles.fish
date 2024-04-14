function dotfiles --wraps='git --git-dir=$HOME/.local/state/dotfiles/repository.git/ --work-tree=$HOME' --description 'alias dotfiles=git --git-dir=$HOME/.local/state/dotfiles/repository.git/ --work-tree=$HOME'
  git --git-dir=$HOME/.local/state/dotfiles/repository.git/ --work-tree=$HOME $argv
end
