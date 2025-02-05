#!/bin/bash

# Check if a tmux session named 'coding' exists
if ! tmux has-session -t Nuolaidauk 2>/dev/null; then
    # If not, create a new session named 'coding' with a window named 'Backend'
    tmux new-session -d -s Nuolaidauk -n Backend

    # Split the window vertically, making the new pane 2 lines tall
    tmux split-window -v -l 20 -t Nuolaidauk:Backend
    tmux resize-pane -t Nuolaidauk:Backend.2 -y 20

    # Send commands to the first pane
    tmux send-keys -t Nuolaidauk:Backend.1 "cd ~/Coding/Nuolaidauk/stage/backend; vim" C-m
    tmux send-keys -t Nuolaidauk:Backend.1 " " n

    # Send commands to the second pane
    tmux send-keys -t Nuolaidauk:Backend.2 "source ~/Coding/Nuolaidauk/stage/backend/venv/bin/activate; clear" C-m
    tmux send-keys -t Nuolaidauk:Backend.2 "clear" C-m
    tmux send-keys -t Nuolaidauk:Backend.2 "python manage.py runserver 3000"

    # Create a new window named 'Frontend'
    tmux new-window -t Nuolaidauk -n Frontend

    # Split the window vertically, making the new pane 2 lines tall
    tmux split-window -v -l 20 -t Nuolaidauk:Frontend
    tmux resize-pane -t Nuolaidauk:Frontend.2 -y 20

    # Send commands to the first pane
    tmux send-keys -t Nuolaidauk:Frontend.1 "cd ~/Coding/Nuolaidauk/stage/frontend; vim" C-m
    tmux send-keys -t Nuolaidauk:Frontend.1 " " n

    # Send commands to the second pane
    tmux send-keys -t Nuolaidauk:Frontend.2 "cd ~/Coding/Nuolaidauk/stage/frontend" C-m
    tmux send-keys -t Nuolaidauk:Frontend.2 "clear" C-m
    tmux send-keys -t Nuolaidauk:Frontend.2 "npm start"

    # Create a new window named 'Scraper'
    tmux new-window -t Nuolaidauk -n Scraper

    # Split the window vertically, making the new pane 2 lines tall
    tmux split-window -v -l 20 -t Nuolaidauk:Scraper
    tmux resize-pane -t Nuolaidauk:Scraper.2 -y 20

    # Send commands to the first pane
    tmux send-keys -t Nuolaidauk:Scraper.1 "cd ~/Coding/Nuolaidauk/scraper; vim" C-m
    tmux send-keys -t Nuolaidauk:Scraper.1 " " n

    # Send commands to the second pane
    tmux send-keys -t Nuolaidauk:Scraper.2 "source ~/Coding/Nuolaidauk/scraper/web-scraper/venv/bin/activate; clear" C-m
    tmux send-keys -t Nuolaidauk:Scraper.2 "clear" C-m

    # Select the first pane
    tmux select-pane -t Nuolaidauk:Backend.1
fi

# Switch to the 'coding' session
tmux switch-client -t Nuolaidauk
