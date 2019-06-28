# Initial setup
set -g default-terminal xterm-256color
set -g status-keys vi


# Prefix
set-option -g prefix C-a
unbind-key C-a
bind-key C-a send-prefix
set -g base-index 1


# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."


# Easy clear history
bind-key L clear-history


# Lengthen the amount of time status messages are displayed
set-option -g display-time 2000
set-option -g display-panes-time 3000


# Automatically set window title
set-window-option -g automatic-rename on
set-option -g set-titles on


# Key bindings for copy-paste
setw -g mode-keys vi
unbind p
bind p paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection
set-option -g renumber-windows on


# Window activity monitor
setw -g monitor-activity on
set -g visual-activity on


# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v


# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D


# Allow the arrow key to be used immediately after changing windows.
set-option -g repeat-time 0

# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window


# Double press <prefix> to move to last window
bind-key C-b last-window

# No delay for escape key press
set -sg escape-time 0


# Window activity monitor
setw -g monitor-activity on
set -g visual-activity on


# Mouse Mode
set -g mode-mouse on
set -g mouse-resize-pane on
set -g mouse-select-pane on
set -g mouse-select-window on
set -g history-limit 10000

# Theme
set -g window-status-current-bg green
set -g window-status-current-fg black
set -g window-status-current-attr bold
set-option -g message-bg colour237
set-option -g message-fg colour231
set-option -g pane-border-fg green
set-option -g pane-active-border-fg green

# Status Bar
set -g status-justify centre
set -g status-bg black
set -g status-fg white
set -g status-interval 60
set -g status-left-length 30
set -g status-left '#[fg=green][#S] #(whoami)@#H'
set -g status-right '#[fg=green]#(cut -d " " -f 1-3 /proc/loadavg)#[default]  #[fg=green]%H:%M'