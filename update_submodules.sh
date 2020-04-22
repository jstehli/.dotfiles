#!/bin/bash
# update the git submodules (e.g. vim plugins)
# by Jonas Stehli

git submodule foreach git pull origin master

