# video_app

A Flutter application that runs on Android, iOS, Web, Windows, macOS, and Linux.

---

## Requirements

Before running this project, make sure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.0 or higher recommended)
- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- [VS Code](https://code.visualstudio.com/) with the Flutter extension, **or** [Android Studio](https://developer.android.com/studio)
- For Android: Android emulator or a physical device with USB debugging enabled
- For iOS: macOS with Xcode installed

To verify your setup, run:

```bash
flutter doctor
```

Fix any issues it reports before continuing.

---

## Getting Started

### 1. Clone or download the project

```bash
git clone <your-repo-url>
cd video_app
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Run the app

**On a connected device or emulator:**
```bash
flutter run
```

**On a specific platform:**
```bash
flutter run -d chrome       # Web
flutter run -d windows      # Windows
flutter run -d macos        # macOS
flutter run -d linux        # Linux
```