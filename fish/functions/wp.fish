function wp --description 'Convert WebP image to PNG format'
  if not test (count $argv) -gt 0;
    echo "usage: wp <source-file> <...>"
    return 0
  end

  for source in $argv
    set -l target (string replace -r "\.webp\$" "" $source).png
    dwebp $source -o $target
  end
end
