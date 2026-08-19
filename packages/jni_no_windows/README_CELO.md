# CELO local override

This package is a local copy of `jni` 0.14.2 used by `sentry_flutter` 9.20.0.

The only intentional change is in `pubspec.yaml`: the Windows Flutter plugin
registration was removed so Windows builds do not run `jni/windows/CMakeLists.txt`,
which requires a local JDK/JVM through CMake `find_package(JNI)`.

Sentry uses `package:jni` for its Android native SDK integration. Keeping the
Android plugin registration preserves that behavior while avoiding an unrelated
Windows build-time dependency.
