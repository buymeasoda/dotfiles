function wp --description 'Convert WebP image to PNG format'
  if not test (count $argv) -eq 1;
    echo "usage: wp <source-file>"
    return 0
  end

  set -l source $argv[1]
  set -l target (string replace -r "\.webp\$" "" $source).png

  dwebp $source -o $target
end
