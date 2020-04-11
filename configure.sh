#!/bin/bash

function system_update() {
    sudo apt update && sudo apt upgrade -y
}
system_update
