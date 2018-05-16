#!/bin/sh

export HOME=$ADTTMP
export PIP_DISABLE_PIP_VERSION_CHECK=1

pip install "world<4"
pip list --format=columns
ls -ld $HOME/.local/lib/python2.*/site-packages/world-*.dist-info
pip uninstall -y world
pip list --format=columns

pip2 install "world<4"
pip2 list --format=columns
ls -ld $HOME/.local/lib/python2.*/site-packages/world-*.dist-info
pip2 uninstall -y world
pip2 list --format=columns
