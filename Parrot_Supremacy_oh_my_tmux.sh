if (env | grep TMUX); then
	# First split horizontal
	tmux split-window -p 33
	tmux split-window -p 25 -h
	tmux last-pane
	tmux split-window -p 33 -h
	tmux last-pane
	tmux split-window -p 50 -h
	
	tmux select-pane -t 1
	
	# Second split horizontal
	
	tmux split-window -p 50
	tmux split-window -p 25 -h
	tmux last-pane
	tmux split-window -p 33 -h
	tmux last-pane
	tmux split-window -p 50 -h
	
	tmux select-pane -t 1
	
	# Last split horizontal
	tmux split-window -p 25 -h
	tmux last-pane
	tmux split-window -p 33 -h
	tmux last-pane
	tmux split-window -p 50 -h
	
	tmux select-pane -t 1
	
	#	PARROT PART YIPPPIEEE
	
	
	tmux send-keys -t 2 'curl parrot.live' Enter
	tmux send-keys -t 3 'curl parrot.live' Enter
	tmux send-keys -t 4 'curl parrot.live' Enter
	tmux send-keys -t 5 'curl parrot.live' Enter
	tmux send-keys -t 6 'curl parrot.live' Enter
	tmux send-keys -t 7 'curl parrot.live' Enter
	tmux send-keys -t 8 'curl parrot.live' Enter
	tmux send-keys -t 9 'curl parrot.live' Enter
	tmux send-keys -t 10 'curl parrot.live' Enter
	tmux send-keys -t 11 'curl parrot.live' Enter
	tmux send-keys -t 12 'curl parrot.live' Enter
	curl parrot.live
else
	tmux new -d -s PARROT
	sleep 2
	tmux send-keys -t PARROT.1 './Parrot_Supremacy_oh_my_tmux.sh' ENTER
	tmux a -t PARROT
fi