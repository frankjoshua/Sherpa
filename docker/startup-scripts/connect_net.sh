#!/bin/bash
echo "Run before launching docker containers."
echo "example usage: weave launch 10.10.10.1"
weave launch $@
echo "Done."
