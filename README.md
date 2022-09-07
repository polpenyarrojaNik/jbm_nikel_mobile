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

### Build iOS

```sh
make build_ios_mobile

```

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
