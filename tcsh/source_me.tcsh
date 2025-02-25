
# dev cmd

alias py3 'python3'
alias qsubi 'qsub -Is tcsh'

# usr command
alias v 'vim'
alias m 'more'
alias g 'gedit'

alias restart_sshd 'sudo systemctl restart sshd'
alias restart_ftp 'sudo systemctl start vsftpd; sudo systemctl enable vsftpd'

alias path '~/scripts/path.sh'
alias p4s '~/scripts/p4safe.sh'
alias p4attach '~/scripts/p4attach.sh'
alias p4rebase '~/scripts/p4rebase.sh'

alias search 'grep -rin \!:1'
alias searchf '~/scripts/searchf.sh'
alias cdpwd 'cd `pwd`'

# key mapping
bindkey '\e[1~'   beginning-of-line  # Linux console
bindkey '\e[H'    beginning-of-line  # xterm
bindkey '\eOH'    beginning-of-line  # gnome-terminal
bindkey '\e[2~'   overwrite-mode     # Linux console, xterm, gnome-terminal
bindkey '\e[3~'   delete-char        # Linux console, xterm, gnome-terminal
bindkey '\e[4~'   end-of-line        # Linux console
bindkey '\e[F'    end-of-line        # xterm
bindkey '\eOF'    end-of-line        # gnome-terminal

# sets
set prompt='%B%m:%~> '  # for terminal prompt
set symlinks="ignore"  # for cd .. to follow symlink path
set color  # for tab completion coloring

# nv only
alias py3.nv '/home/utils/Python/builds/3.11.6-20240102/bin/python3'
alias behave 'py3.nv -m behave'

alias qsub.hw 'qsub -P vlsi_meth_dfx_dev_sw'
alias qsubi.hw 'qsubi -P vlsi_meth_dfx_dev_sw'
alias qsub.dfx '/home/ate/scripts/dftqtracker/DftSub/dftsub.pl -jobsize 32G -P vlsi_meth_dfx_dev_qa -category methodology'
alias qsub.dfx.lar 'qsub.dfx -jobsize 256G'
alias qsubi.dfx 'qsub.dfx -Is tcsh'
alias qsubi.dfx.lar 'qsub.dfx.lar -Is tcsh'
alias qstat.dfx '/home/ate/scripts/dftqtracker/DftSub/dftjobs.pl'

