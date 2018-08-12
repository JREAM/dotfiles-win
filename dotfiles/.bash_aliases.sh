#!/bin/bash

export GREP_COLOR='1;32'


# Personal Folder shortcuts
[ -d ~/projects ] && alias p='cd ~/projects/'
[ -d ~/dev ] && alias d='cd ~/dev/' && alias dev='cd ~/dev'

# ___________________________________________________________________
#
#                           COMMON
# ___________________________________________________________________

alias chmox='sudo chmod'  # always make this typo
alias chmod='sudo chmod'
alias chown='sudo chown'
alias chgrp='sudo chown'
alias service='sudo service'
alias systemctl='sudo systemctl'

alias c='clear'
alias h='history'
alias j='jobs -l'
alias py='python'
alias vi=vim
alias ports='netstat -tulanp'
alias now="date +'%A, %B %m %Y at%l:%M%P %Z'"


# Listing
alias l="ls -lh --color=auto"
alias la="ls -lah --color=auto"                   # Long List
alias ll="ls -lah --color=auto"                   # Long List
alias ls="ls --color=auto"
alias l.="ls -d .* --color=auto | column -s='\n'" # List Hidden files
alias lh="l."                                     # <List Hidden Files>; Alias for Alias
alias ll.="ls -lhd .* --color=auto"               # Long List Hiddent
alias llh="ll."                                   # <List Hiddent Files; Alias for Alias
alias os="lsb_release -a"                         # Get OS Version

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Preserve / root folder permissions
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Mount (Readable)
alias mount='mount |column -t'

# Ping
alias ping='ping -c 5'  # Send X packets
alias fastping='ping -c 100 -s.2'

# Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Utility
alias mkdir='mkdir -pv'             # $ mkdir x/y/z
alias xclip='xclip -sel clip'       # Copy to Clipboard $ cat file.txt | xclip
alias wget="wget -c"                # Resume if failed by default
alias findfile="find . -name "      # Make find a little easier

# Disk Related
alias df='df -H'
alias du='du -ch'


# Utility: Get My IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias myips="hostname -I"

# ___________________________________________________________________
#
#                        LEGIT FUNCTIONS
# ___________________________________________________________________

# Directory Loop (All Children/Sub-Folders)
#
#   @TODO [ON HOLD, SEE BELOW] PASS -d=2 or --depth=<number> to allow over 1 level deep
#
# examples: $ loopdircmd git checkout development
# ___________________________________________________________________
loopdir() {
    if [ -z "$1" ]; then
        echo -e "[!] Whoops! Provide a command,\n\t eg: loopdircmd git checkout development\n"
        return
    fi

    # $* joins all arguments as a string
    echo "$*"

    # Go One Level Deep
    # @TODO Using this right now for CWD OUTPUT
    for d in ./*/; do
        echo -e "\n${BOLD}${WHITE}${d}${RESET}"
        (cd "$d" && $*);
    done

    # @TODO: This works great, but I'd like to print out the directory im in better
    # -name . skips running from the CWD
    # find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && echo -e \"\n${BOLD}${GREEN}In Directory: ${PWD}${RESET}\" && $*" \;
}
