#!/bin/bash

echo $@ | docker attach --sig-proxy=false neconoaf5si-paper-1 &
pid=$!
sleep 1
kill $pid
