# Quiz Gamification App

## Overview
A modern, responsive Flutter application that provides an interactive quiz experience with gamification elements.

## Features
- Responsive design across mobile, tablet, and desktop layouts
- Dynamic quiz generation
- Real-time scoring system
- Animated result screen
- State management using Provider

## Screenshots
### Quiz Screen Example:
![Quiz Screen 1](Quiz_Screen-1.jpg)
![Quiz Screen 2](Quiz_Screen-2.jpg)

## Technical Details
- **State Management**: Provider
- **Animations**: Lottie
- **Responsive Design**: Custom responsive layout
- **UI Components**: Material Design

## Project Structure
```
lib/
├── main.dart
├── model/
│   └── quiz_model.dart
├── provider/
│   └── quiz_provider.dart
├── services/
│   └── quiz_service.dart
└── screens/
    ├── components/
        ├── answer_button.dart
        └──  question_card.dart
    ├── home_screen.dart
    ├── quiz_screen.dart
    └── result_screen.dart
```

## Getting Started

### Prerequisites
- Flutter SDK
- Dart SDK

### Installation
1. Clone the repository
2. Run `flutter pub get`
3. Run `flutter run`

## Dependencies
- provider
- lottie
- flutter

## Contributing
Contributions are welcome. Please submit a pull request.
