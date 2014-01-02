#!/bin/bash
REPO_DIR=..
for dir in $(ls $REPO_DIR); do
    if [ -f $REPO_DIR/$dir/00.tex ]; then
        ln -sf $PWD/common_makefile $PWD/$REPO_DIR/$dir/Makefile
        echo "create Makefile in $dir"
    fi
done

