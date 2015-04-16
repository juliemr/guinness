#!/bin/bash

export DARTIUM_BIN="$DART_SDK/../chromium/Chromium.app/Contents/MacOS/Chromium"

echo ---------------
echo Pub install
echo ------------
pub install


echo ------------
echo Running Specs Dartium
echo ------------
pub run test:test test/html/ -p dartium

echo ------------
echo Cleanup
echo ------------
echo rm -rf build