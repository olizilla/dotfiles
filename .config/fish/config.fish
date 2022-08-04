set -U EDITOR "vim"
set -U MANPAGER "less -X"

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias firefox="open -a Firefox"
    alias chrome="open -a 'Google Chrome'"
    alias safari='open -a Safari'
    alias digga="dig +nocmd $argv[1] any +multiline +noall +answer"
    function md ()
        mkdir -p $argv[1]
        cd $argv[1]
    end
end
