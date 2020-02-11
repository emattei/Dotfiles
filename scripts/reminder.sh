#!/usr/bin/bash

#Sleep two minutes and then display the message

sleep 2m; gdialog --msgbox "$(date +%H:%M) - call the doctor now!"
