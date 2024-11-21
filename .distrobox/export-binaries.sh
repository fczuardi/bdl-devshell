#!/bin/bash

# this script is meant to be run inside the distrobox, to make available the binaries from the
# container to the host
distrobox-export -b /usr/bin/bitcoin-cli
distrobox-export -b /usr/bin/jq
