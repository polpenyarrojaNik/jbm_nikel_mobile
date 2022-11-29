# JBM Nikel Mobile

Aplicación móvil para JBM

## How to Start Development

**Step 1:**

Download or clone this repo by using the link below:

<https://github.com/nikelConsultores/jbm_nikel_mobile.git>

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```sh
flutter pub get
```

**Step 3:**

This project uses libraries that works with code generation, execute the following command to generate files:

```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```sh
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

## Code Snippets

### Major Upgrade pubspec.yaml

```sh
make pub_major_upgrade

```

### Deploy Mobile

```sh
make deploy_mobile

```

Testing: Nos updates version, only build, but cannot be submitted as final release, only on TestFlight.

```sh
make deploy_mobile_Test

```

Drag and drop the "build/ios/ipa/jbm_nikel_mobile.ipa" bundle into the Apple Transport macOS app <https://apps.apple.com/us/app/transporter/id1450874784>

Upload the "build/app/outputs/bundle/release/app-release.aab" to Google Play Store

### Build and watch automatic code generation

```sh
flutter pub run build_runner watch --delete-conflicting-outputs

```
