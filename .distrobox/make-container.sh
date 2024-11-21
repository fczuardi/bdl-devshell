#!/bin/bash

podman build -t bdl -f oci/dev.Containerfile
DBX_CONTAINER_ALWAYS_PULL=0 distrobox create --image bdl --name bdl
