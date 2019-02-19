function hasher --description 'Safely generate hashes without shell history'
  set -l options 'h/help' 'm/mode=!_validate_hasher_mode'
  set -l help 'usage: hasher [-m|--mode] <md5|sha1|sha256|sha512>'

  argparse $options -- $argv 2> /dev/null
  or echo $help && return

  if set -q _flag_help
    echo $help
    return 0
  end

  test -n "$_flag_mode"; and set -l mode $_flag_mode; or set -l mode 'sha1'

  read -sP 'Input string: ' input
  echo -n "Hash ($mode): "

  switch $mode
    case md5
      echo -n "$input" | md5
    case sha1
      echo -n "$input" | shasum
    case sha256
      echo -n "$input" | shasum -a 256
    case sha512
      echo -n "$input" | shasum -a 512
  end

  set -e input
end

function _validate_hasher_mode  --no-scope-shadowing
  if not string match -qr '^(md5|sha1|sha256|sha512)$' -- $_flag_value
    return 1
  end
  return 0
end
