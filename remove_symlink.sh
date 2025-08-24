#!/bin/bash

for dir in */; do
        rm -rf $dir/.env
        echo "Removed for $dir"
done;
