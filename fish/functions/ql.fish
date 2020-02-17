function ql --description 'Open quick look preview for file'
  if not test (count $argv) -gt 0;
    echo "usage: ql <file>"
    return 0
  end

  qlmanage -p $argv > /dev/null 2>&1
end
