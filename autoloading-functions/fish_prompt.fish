function fish_prompt --description 'Returns the command prompt'
  if contains '.git' (ls -a)
    set branch (git branch | grep '^*' | string sub --start 3)
  end

  echo (pwd)
  echo " | $branch | > "
end
