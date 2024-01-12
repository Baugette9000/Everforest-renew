#!/bin/bash

if [ -d "$HOME/.local/share/Trash" ]; then
    rm -rf $HOME/.local/share/Trash/* && printf 'Trash Emptied'
else
    printf 'No trash folder to discard'
fi
