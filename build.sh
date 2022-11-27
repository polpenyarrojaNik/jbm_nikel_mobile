#!/bin/bash
# Generate icons
flutter pub run flutter_launcher_icons:main

# Bump build number
perl -i -pe 's/^(version:\s+\d+\.\d+\.)(\d+)(\+)(\d+)$/$1.($2+1).$3.($4+1)/e' pubspec.yaml

version=`grep 'version: ' pubspec.yaml | sed 's/version: //'`
git commit -m "Bump version to $version" pubspec.yaml
git push origin main
# Build iOS
flutter build ios --release
flutter build ipa
open ./build/ios/archive/
