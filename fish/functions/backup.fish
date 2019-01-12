function backup --description 'Backup files from source to target'
  set -l options 'h/help' 'a/archive'
  argparse $options -- $argv;

  if set -q _flag_help; or not test (count $argv) -eq 2;
    echo "usage: backup [-a] source target"
    return 0
  end

  if set -q _flag_archive
    rsync -avhP --stats --delete --backup --backup-dir=backup_(date +%Y-%m-%d) $argv[1] $argv[2]
  else
    rsync -avhP --stats --delete $argv[1] $argv[2]
  end
end
