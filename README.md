# Orbitron Flutter Mobile Example

A Flutter mobile application that demonstrates the use of Orbitron fonts across different weights and styles. This app showcases how to integrate custom fonts in Flutter mobile applications with support for both Android and iOS platforms.

## Features

- **Orbitron Font Integration**: Displays all available Orbitron font weights (Regular, Medium, SemiBold, Bold, ExtraBold, Black)
- **Interactive Demo**: Counter example with futuristic styling
- **Cross-platform Support**: Works on both Android and iOS
- **Modern UI**: Dark theme with cyan accents for a sci-fi aesthetic

## Prerequisites (Mac)

### 1. Install Flutter

⚠️ **Important**: Install Flutter globally on your system, NOT in your project directory.

```bash
# Create a development directory (recommended location)
mkdir -p ~/development
cd ~/development

# Download Flutter SDK
curl -o flutter_macos.zip https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.24.5-stable.zip

# Extract Flutter
unzip flutter_macos.zip
rm flutter_macos.zip

# Add Flutter to your PATH permanently
echo 'export PATH="$HOME/development/flutter/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Verify installation
flutter --version
flutter doctor
```

### 2. Install Java (Required for Android development)

Flutter requires Java 17 or later. Check your Java version:

```bash
java -version
```

If you need to install or update Java:

```bash
# Install Java 17 using Homebrew
brew install openjdk@17

# Set Java 17 as default
echo 'export JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home' >> ~/.zshrc
source ~/.zshrc
```

### 3. Install Android Studio (for Android development)

- Download and install [Android Studio](https://developer.android.com/studio)
- During installation, ensure you install:
  - Android SDK
  - Android SDK Platform-Tools
  - Android Virtual Device (AVD)
- Create at least one Android Virtual Device (AVD) through **Tools → AVD Manager**

### 4. Install Xcode (for iOS development)

- Install Xcode from the Mac App Store
- Run: `sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer`
- Accept license: `sudo xcodebuild -license accept`
- Install CocoaPods: `sudo gem install cocoapods`

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

Ensure all checkmarks are green for the platforms you want to target. If you see issues:

- **Android toolchain**: Make sure Android Studio is installed and SDK licenses are accepted
- **Xcode**: Install Xcode and accept licenses
- **Java version issues**: Ensure you have Java 17+ installed

## Running the App

### Android Emulator

1. **Start Android Emulator**
   ```bash
   # List available AVDs
   flutter emulators
   
   # Launch an emulator (replace with your emulator name)
   flutter emulators --launch <emulator_id>
   ```
   
   Or open Android Studio → **Tools** → **AVD Manager** → Click the play button next to your virtual device.

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

2. **Java/Gradle compatibility errors**
   ```
   Unsupported class file major version 65
   ```
   - Make sure you have Java 17+ installed
   - The project uses Gradle 8.4+ which supports Java 21
   - If issues persist, set JAVA_HOME to Java 17:
     ```bash
     export JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
     flutter run
     ```

3. **Android resource linking failed**
   ```
   error: resource mipmap/ic_launcher not found
   ```
   - The project includes all necessary Android resources
   - If you encounter this, try:
     ```bash
     flutter clean
     flutter pub get
     flutter run
     ```

4. **Fonts not loading**
   - Verify font paths in `pubspec.yaml`
   - Run `flutter clean && flutter pub get`

5. **iOS build issues**
   - Open `ios/Runner.xcworkspace` in Xcode
   - Check signing and provisioning profiles
   - Update iOS deployment target if needed
   - Make sure CocoaPods is installed: `sudo gem install cocoapods`

6. **Android build issues**
   - Check `android/app/build.gradle` for correct SDK versions
   - Ensure Android SDK tools are up to date
   - Make sure you have created an Android Virtual Device (AVD)

### System Requirements

- **macOS**: 10.14 (Mojave) or later
- **Disk space**: At least 2.8 GB (does not include disk space for IDE/tools)
- **Java**: OpenJDK 17 or later
- **Tools**: Git, Android Studio, Xcode (for iOS)

### Getting Help

- [Flutter Documentation](https://docs.flutter.dev/)
- [Flutter Installation Guide](https://docs.flutter.dev/get-started/install/macos)
- [Flutter GitHub Issues](https://github.com/flutter/flutter/issues)
- [Orbitron Font Info](https://fonts.google.com/specimen/Orbitron)

## License

This project is for demonstration purposes. The Orbitron font is licensed under the SIL Open Font License (see `fonts/Orbitron/OFL.txt`).
