#Remap prefix to screens
set -g prefix C-a
bind C-a send-prefix
unbind C-b

#Quality of life suff 
set -g history-limit 10000
set -g allow-rename off

## join Windows
bind-key j command-prompt -p "join pane from:"  "join-pane -s '%%'"
bind-key j command-prompt -p "send pane to:"  "send-pane -t '%%'"

#myconf S
# Easy clear history
bind-key L clear-history

# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v

# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D


# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window

# Double press <prefix> to move to last window
bind-key C-b last-window

# Status Bar
set -g status-justify centre
set -g status-bg black
set -g status-fg white
set -g status-interval 60
set -g status-left-length 30
set -g status-left '#[fg=green][#S] #(whoami)@#H'
set -g status-right '#[fg=green]#(cut -d " " -f 1-3 /proc/loadavg)#[default]  #[fg=green]%H:%M'

# Theme
set -g window-status-current-bg green
set -g window-status-current-fg black
set -g window-status-current-attr bold
set-option -g message-bg colour237
set-option -g message-fg colour231
set-option -g pane-border-fg green
set-option -g pane-active-border-fg green

# Window activity monitor
setw -g monitor-activity on
set -g visual-activity on




#my conf F


# Search Mode VI (default is emac)
set-window-option -g mode-keys vi

run-shell /opt/tmux-logging/logging.tmux
