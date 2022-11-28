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

### Upgrade pubspec.yaml

```sh
make upgrade

```

### Deploy iOS

```sh
make build_ios_mobile

```

Drag and drop the "build/ios/ipa/*.ipa" bundle into the Apple Transport macOS app
<https://apps.apple.com/us/app/transporter/id1450874784>

### Build and watch automatic code generation

```sh
flutter pub run build_runner watch --delete-conflicting-outputs

```

### Code coverage

```sh
flutter test --coverage

```

### Generate App Icons

```sh
flutter pub run flutter_launcher_icons:main

```

### Problems compiling SQLite after upgrade pubspec SQLite

1. Go to /ios folder inside your Project.
2. Delete Podfile.lock (YourPoject/ios/Podfile.lock)
3. ```pod repo remove trunk```
4. ```sudo arch -x86_64 gem install ffi```
5. ```arch -x86_64 pod install --repo-update```
6. now go to the podfile at line just uncomment the line and make it similar like below.
   ```platform :ios, '12.0'```
7. ```arch -x86_64 pod install --repo-update```
8. ```flutter clean```
9. ```flutter pub upgrade```
10. ```flutter pub run build_runner build --delete-conflicting-outputs```
11. ```flutter run```
