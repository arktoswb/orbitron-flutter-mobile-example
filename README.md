# Orbitron Flutter Mobile Example

A Flutter mobile application that demonstrates the use of Orbitron fonts across different weights and styles. This app showcases how to integrate custom fonts in Flutter mobile applications with support for both Android and iOS platforms.

## Features

- **Orbitron Font Integration**: Displays all available Orbitron font weights (Regular, Medium, SemiBold, Bold, ExtraBold, Black)
- **Interactive Demo**: Counter example with futuristic styling
- **Cross-platform Support**: Works on both Android and iOS
- **Modern UI**: Dark theme with cyan accents for a sci-fi aesthetic

## Prerequisites (Mac)

### 1. Install Flutter
```bash
# Download Flutter SDK
curl -o flutter_macos.zip https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.24.5-stable.zip

# Extract and add to PATH
unzip flutter_macos.zip
export PATH="$PATH:`pwd`/flutter/bin"

# Verify installation
flutter doctor
```

### 2. Install Xcode (for iOS development)
- Install Xcode from the Mac App Store
- Run: `sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer`
- Accept license: `sudo xcodebuild -license accept`

### 3. Install Android Studio (for Android development)
- Download and install Android Studio
- Install Android SDK and create a virtual device

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/arktoswb/orbitron-flutter-mobile-example.git
cd orbitron-flutter-mobile-example
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Verify Setup
```bash
flutter doctor
```
Ensure all checkmarks are green for the platforms you want to target.

## Running the App

### Android Emulator

1. **Start Android Emulator**
   ```bash
   # List available AVDs
   flutter emulators
   
   # Launch an emulator
   flutter emulators --launch <emulator_id>
   ```

2. **Run the App**
   ```bash
   flutter run
   ```

### iOS Simulator (Mac only)

1. **Start iOS Simulator**
   ```bash
   # List available simulators
   xcrun simctl list devices
   
   # Open iOS Simulator
   open -a Simulator
   ```

2. **Run the App**
   ```bash
   flutter run
   ```

### Physical Device

#### Android
1. Enable Developer Options and USB Debugging on your Android device
2. Connect device via USB
3. Run: `flutter devices` to verify device is detected
4. Run: `flutter run`

#### iOS
1. Connect your iOS device via USB
2. Open the project in Xcode: `open ios/Runner.xcworkspace`
3. Set up provisioning profile and signing
4. Run from Xcode or use: `flutter run`

## Development Commands

### Run Tests
```bash
flutter test
```

### Build for Release

#### Android APK
```bash
flutter build apk --release
```

#### iOS (requires Xcode)
```bash
flutter build ios --release
```

### Code Analysis
```bash
flutter analyze
```

## Font Information

This app uses the Orbitron font family, which includes:
- **Regular** (400)
- **Medium** (500) 
- **SemiBold** (600)
- **Bold** (700)
- **ExtraBold** (800)
- **Black** (900)

The fonts are located in the `fonts/Orbitron/static/` directory and are configured in `pubspec.yaml`.

## Project Structure

```
lib/
  main.dart                 # Main application entry point
android/                   # Android-specific configuration
ios/                       # iOS-specific configuration
fonts/Orbitron/           # Font files
  static/                  # Static font files (.ttf)
test/                     # Unit and widget tests
```

## Troubleshooting

### Common Issues

1. **Flutter doctor shows issues**
   - Follow the suggested fixes from `flutter doctor`
   - Ensure all required SDKs are installed

2. **Fonts not loading**
   - Verify font paths in `pubspec.yaml`
   - Run `flutter clean && flutter pub get`

3. **iOS build issues**
   - Open `ios/Runner.xcworkspace` in Xcode
   - Check signing and provisioning profiles
   - Update iOS deployment target if needed

4. **Android build issues**
   - Check `android/app/build.gradle` for correct SDK versions
   - Ensure Android SDK tools are up to date

### Getting Help

- [Flutter Documentation](https://docs.flutter.dev/)
- [Flutter GitHub Issues](https://github.com/flutter/flutter/issues)
- [Orbitron Font Info](https://fonts.google.com/specimen/Orbitron)

## License

This project is for demonstration purposes. The Orbitron font is licensed under the SIL Open Font License (see `fonts/Orbitron/OFL.txt`).
