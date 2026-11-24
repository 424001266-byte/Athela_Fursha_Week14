
# Cyberwise – Cybersecurity Awareness System

## PC16 – Mobile Development with Lab
### Week 14: Flutter Foundations & Static UI

**Student:** Athela Fursha Peñamante  
**School:** National Teachers College  
**Project Type:** Individual Activity  
**Application:** Cybersecurity Awareness System

---

## Project Description

Cyberwise is a mobile cybersecurity awareness and learning application designed to help students understand online threats and develop safer online habits.

The application focuses on cybersecurity education, particularly social media phishing awareness. It provides a simple and user-friendly interface where learners can view cybersecurity lessons, check their learning progress, and access safety tips.

This project demonstrates Flutter widget composition and static user interface design.

---

## Screens

### Screen 1 – Login / Welcome Screen

The Login / Welcome Screen introduces the Cyberwise application.

Main UI elements:
- Cyberwise logo and application name
- Cybersecurity banner image
- Welcome message
- Email address field design
- Password field design
- Sign-in button design
- Create account text

### Screen 2 – Cybersecurity Awareness Dashboard

The Dashboard Screen displays the main learning features of the application.

Main UI elements:
- Application header
- Welcome banner
- Learning progress indicator
- Phishing Awareness lesson
- Knowledge Quiz
- Safety Checklist
- Video Tutorials
- Cyber Safety Tip

---

## Technologies Used

- Flutter
- Dart
- Material Design
- Visual Studio Code
- Android Emulator

---

## Project Structure

```text
Athela_Fursha_Week14/
│
├── assets/
│   └── images/
│       └── cyber_hero.png
│
├── lib/
│   ├── main.dart
│   └── screens/
│       ├── login_screen.dart
│       └── dashboard_screen.dart
│
├── pubspec.yaml
└── README.md
```

---

## Flutter Widgets Used

The project uses the following Flutter widgets:

- MaterialApp
- ThemeData
- Scaffold
- SafeArea
- SingleChildScrollView
- Column
- Row
- Container
- Stack
- Positioned
- Text
- Icon
- Image.asset
- Padding
- SizedBox
- Expanded
- LinearProgressIndicator

---

## Design System

### Color Palette

| Color | Hex Code | Usage |
|---|---|---|
| Dark Navy | #142D50 | Main background and text |
| Orange | #FF9138 | Buttons and highlights |
| Light Background | #F5F7FB | Screen background |
| White | #FFFFFF | Cards and input fields |

### Typography

The application uses a clean and readable Roboto font style.

---

## Setup Instructions

### 1. Install Flutter

Download and install the Flutter SDK:

https://flutter.dev

Make sure Flutter is properly configured on your computer.

### 2. Open the Project

Open the project folder in Visual Studio Code.

### 3. Install Dependencies

Open the terminal and run:

```bash
flutter pub get
```

### 4. Run the Application

Connect an Android emulator or physical device.

Run:

```bash
flutter run
```

---

## Previewing the Screens

The Dashboard Screen is configured as the default screen.

To preview the Login / Welcome Screen, open:

`lib/main.dart`

Change:

```dart
home: const DashboardScreen(),
```

to:

```dart
home: const LoginScreen(),
```

Save the file and run the application again.

---

## Static UI Limitation

This project is a static UI activity.

The following features are visual representations only:

- Login authentication
- Email and password input
- Sign-in button
- Learning module cards
- Quiz and checklist features
- Page navigation
- Data storage

No backend, database, or authentication system is connected.

---

## Learning Objectives

This activity demonstrates the ability to:

1. Create Flutter screens using StatelessWidget.
2. Organize UI components using Row and Column.
3. Use Stack and Positioned for layered elements.
4. Display local image assets using Image.asset.
5. Apply consistent colors and typography using ThemeData.
6. Use proper sizing, spacing, and alignment.
7. Create a cohesive two-screen mobile application.

---

## Author

**Athela Fursha Peñamante**  
BS Information Technology  
National Teachers College

---

## Course

PC16 – Mobile Development with Lab  
Week 14: Flutter Foundations & Static UI
