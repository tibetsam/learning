PROMPT_COMMAND='history -a'
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=32000
HISTFILESIZE=2000
SSH_ENV="$HOME/.ssh/environment"
export PATH="$PATH:/home/sam/.local/bin:/usr/local/go/bin:/home/sam/go/bin"
export GOROOT="/usr/local/go"
function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
    ssh-add ~/.ssh/google_compute_engine
    test -f ~/.ssh/google_compute_engine-cert.pub && ssh-keygen -L -f ~/.ssh/google_compute_engine-cert.pub | egrep "Key ID|Valid"
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
alias ls='ls --color'
alias ll='ls -lrt'
alias la='ls -A'
alias l='ls -CF'
alias up='source /home/sam/bin/up'
alias bb='source /home/sam/bin/gb'
alias c='source /home/sam/bin/pcd'
parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
     }

export PS1="\u@\h\[\033[32m\]:\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
