#! /bin/bash

sesh connect "$(sesh list -i | gum filter --no-strip-ansi --limit 1 --no-sort --fuzzy --placeholder 'Pick a sesh' --height 50 --prompt='⚡')"
