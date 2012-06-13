# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias hfcut='ssh -l root -L 7800:209.184.80.33:22 70.85.82.36 -N &'
alias hfcu='ssh -p 7800 hfcu'
alias x=extract

# fuego1.sffirecu.org
alias fuego='ssh -l root -L 3010:63.80.75.80:443 70.85.82.36 -N &'
alias fuego_joe='ssh -l root -L 3011:70.88.43.188:80 70.85.82.36 -N &'
