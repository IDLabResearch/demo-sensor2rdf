new-session -d
split-window -d -t 0 -v
split-window -d -t 0 -v
split-window -d -t 2 -h

# LDF server
send-keys -t 0 "cd server && clear && export PS1='LDF Server$ '" enter
send-keys -t 0 "ldf-server config_server.json" enter

# JSON ouptut
send-keys -t 3 "cd rdfgeneration/node_modules/tessel2rdf/ && clear && export PS1='JSON$ '" enter
send-keys -t 3 "rm -f output.json.log && touch output.json.log && tail -f output.json.log" enter

# Application
send-keys -t 2 "cd datacapture && clear && export PS1='RDF Generation$ ' && sleep 5" enter
send-keys -t 2 "tessel run index.js | node ../rdfgeneration/index.js" enter

# RML Mappings
send-keys -t 1 "cd server && clear && export PS1='Mappings$ '" enter
send-keys -t 1 "vim ldf-tessel.rml.ttl" enter

select-pane -t 1

## NAVIGATION: ############################

# Switch panes
# Usage: "ALT+arrow keys" (without prefix key)
# from https://gist.github.com/spicycode
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Switch windows
# usage: "SHIFT+arrow" (without prefix key)
bind -n S-Left  previous-window
bind -n S-Right next-window

attach
