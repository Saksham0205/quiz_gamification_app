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
## Screenshots
<img src="https://github.com/user-attachments/assets/c659062c-197f-406a-935e-3b2d00a71f72" alt="Home-Screen" width="200"/>
<img src="https://github.com/user-attachments/assets/7c3e2976-2700-4ca8-b71b-f8a94f0c27fd" alt="Quiz_Screen-1" width="200" />
<img src="https://github.com/user-attachments/assets/663e1167-df68-4974-a2cc-eefc541c5c27" alt="Positive_Result" width="200" />
<img src="https://github.com/user-attachments/assets/577a1063-6ae4-4c56-8d85-0eafc95aafb2" alt="Negative_Result" width="200" />




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
- http

