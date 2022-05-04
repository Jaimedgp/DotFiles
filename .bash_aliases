# Paths to export
export PATH=$PATH":$HOME/.bin/py"
export PATH=$PATH":$HOME/.bin/config"
export PATH=$PATH":$HOME/.bin/productivity"
export PATH=$PATH":$HOME/.bin/pomodoro-bash"
export PATH=$PATH":/opt/anaconda3/bin:$PATH"

remote_usr=""
remote_ip=""

# New alias
alias sqlitestudio="/opt/SQLiteStudio/sqlitestudio &"
alias workstation="ssh -XYL  8000:localhost:8888 $remote_usr@$remote_ip"
alias vim="nvim"

# Start Tmux
if [ -z "$TMUX" ]; then
	tmux attach || tmux
fi

# New function to open pdf
pdf() {
	xdg-open "$1"
}

# Function to send files to workstation
wksend() {
	scp "$1" $remote_usr@$remote_ip:~/"$2"
}

# Function to recive files to workstation
wktake() {
	scp -r $remote_usr@$remote_ip:~/"$1" "$2"
}
