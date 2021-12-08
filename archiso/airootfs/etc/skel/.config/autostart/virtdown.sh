#!/bin/bash

if [[ $(systemd-detect-virt) == "none" ]] 
then
    :
else
    killall picom
fi