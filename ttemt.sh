#!/usr/bin/env bash

# Copyright (C) 2026 Jakub Petrovič
# > LICENSE: GNU AGPLv3
# > Author: JPman
# > Website: https://jpman.eu/
# > Github repository: https://github.com/jakub-petrovic/ttemt
# > Version 1.0

# For anyone reading this codebase HF infront of function name stands for Helper function. It is a function that is used to help other functions. Hope this helps :). Yeah i know it is probably stupid.

HFtogglecaseLetter() {
    local char="$1"

    # Check if letter was provided
    if [[ -z "$char" ]]; then
        return 1
    fi

    # Toggle letter using bash builtin parameter expansion or whatever it is called
    if [[ "$char" =~ [[:lower:]] ]]; then
        echo "${char^^}" 
    elif [[ "$char" =~ [[:upper:]] ]]; then
        echo "${char,,}"
    else
        echo "$char"
    fi
}

togglecase() {
    local text="$1"
    local lenght="${#text}"
    local result=""
    local i char toggled

    for (( i=0; i<lenght; i++ )); do
        char="${text:i:1}"
        if [[ "$char" == $'\n' ]]; then
            result+=$'\n'
        else
            result+="$(HFtogglecaseLetter "$char")"
        fi
    done
    echo "$result"
}

main() {
    local lower_option="${1,,}"
    local text="$2"

    if [[ -z "$text" && -p /dev/stdin ]]; then
        text=$(cat)
    fi

    case "$1" in
        "togglecase"|"tc")
            echo "$(togglecase "$text")"
            ;;
        "lowercase"|"l")
            echo "${text,,}"
            ;;
        "uppercase"|"u")
            echo "${text^^}"
            ;;
        *)
            echo "Option not found."
            ;;
    esac
}


main $1 $2
