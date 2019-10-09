#!/usr/bin/env sh
if ! command -v carthage > /dev/null; then
	printf 'Carthage is not installed.\n'
	printf 'See https://github.com/Carthage/Carthage for install instructions.\n'
	exit 1
fi
carthage update --platform iOS,macOS,tvOS,watchOS --no-use-binaries
# carthage build --platform iOS,macOS,tvOS,watchOS --no-skip-current

if ! command -v pod > /dev/null; then
	printf 'CocoaPods is not installed.\n'
	printf 'See https://github.com/CocoaPods/CocoaPods for install instructions.\n'
	exit 1
fi
