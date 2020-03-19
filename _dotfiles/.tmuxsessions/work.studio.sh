#!/bin/bash

cd "$DEV_HOME/work/studio" || return

session="imv_studio"

tmux new-session -d -s $session -n 'status' 'htop'
tmux switch -t $session

tmux new-window -t $session -n 'web'

tmux new-window -t $session -n 'runtime'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "nvm use stable" C-m
tmux send-keys "NODE_ENV=dev node server.js" C-m

# tmux select-pane -t 1
# tmux send-keys "tail -f /vagrant/maximus-worker.log" C-m
# tmux split-window -v
# tmux resize-pane -D 20
# tmux send-keys "tail -f /vagrant/maximus-mojo.log" C-m
# # Setup a CoffeeScript compiler/watchdog pane
# tmux select-pane -t 0
# tmux split-window -v
# tmux resize-pane -D 20
# tmux send-keys "coffee -o /vagrant/root/static/js/ -cw /vagrant/root/coffee/" C-m

# # Setup a MySQL window
# tmux new-window -t $session:2 -n 'MySQL' 'mysql -uroot'

# Set default window
tmux select-window -t $session:0

# Attach to session