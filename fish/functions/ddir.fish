function ddir --description 'Diff source and target directories'
  set -l options 'h/help' 'm/missing'
  argparse $options -- $argv;

  if set -q _flag_help; or not test (count $argv) -eq 2;
    echo "usage: ddir [-m] source target"
    return 0
  end

  if set -q _flag_missing
    diff -x '.DS_Store' -x '.git' -qr $argv[1] $argv[2] | grep $argv[1]
  else
    diff -x '.DS_Store' -x '.git' -qr $argv[1] $argv[2]
  end
end
