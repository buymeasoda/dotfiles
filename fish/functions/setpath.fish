function setpath --description 'Add new path to environment without duplication'
  for new_path in $argv
    if not contains $new_path $PATH
      set -x PATH $PATH $new_path
    end
  end
end
