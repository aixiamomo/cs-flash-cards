#!/bin/bash

if [ ! -f /src/db/cards.db ]; then
	cp cards-empty.db /src/db/cards.db
fi

export CARDS_SETTINGS=/src/config.py
gunicorn --bind  0.0.0.0:8000 app:app