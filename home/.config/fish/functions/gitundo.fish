function gitundo --wraps='git reset HEAD~' --description 'alias gitundo=git reset HEAD~'
  git reset HEAD~ $argv
        
end
