# Flutter Profile Card UI

A clean, modular profile card screen built with Flutter demonstrating core widget composition, layout structure, and custom theming.

**Repository:** [https://github.com/Kirthish-ai/Flutter_Assignment.git](https://www.google.com/url?sa=E&source=gmail&q=https://github.com/Kirthish-ai/Flutter_Assignment.git)[cite: 1]

---

## Overview

This project showcases how to build an elegant, responsive user card by breaking down the application into clear modules. The architecture isolates theme and entry configuration in `main.dart`, while housing the user interface presentation in `profile_screen.dart`.

### Features

* **Modular Codebase:** Clean separation of configuration and presentation layers.
* **Custom Theming:** Utilizes `ColorScheme.fromSeed` to generate a cohesive, brand-aligned color scheme.
* **Core Layout Widgets:** Built using standard Flutter layout primitives without third-party UI packages.
* **Responsive Card Design:** Styled with rounded corners, subtle shadows, and centered content.

---

## Project Structure

```text
lib/
├── main.dart             # App entry point, MaterialApp configuration, & theme setup
└── profile_screen.dart   # Profile card presentation and widget layout

```

---

## Widgets Demonstrated

* **`Container`**: Defines explicit card dimensions, background colors, padding, and drop shadow decoration (`BoxShadow`).
* **`Column`**: Vertically sequences the profile avatar, user name, headline, and contact metadata.
* **`Row`**: Aligns metadata icons side-by-side with labels horizontally.
* **`CircleAvatar`**: Provides a circular container for the user profile glyph.
* **`Text`**: Displays typography with distinct weights and sizes for hierarchy.
* **`Icon`**: Renders scalable vector glyphs styled using theme colors.

---

## Getting Started

### Prerequisites

* Flutter SDK (3.x or later recommended)
* Dart SDK
* An Android/iOS emulator or connected physical device

### Installation & Run

1. Clone the repository:
```bash
git clone https://github.com/Kirthish-ai/Flutter_Assignment.git
cd Flutter_Assignment
```[cite: 1]


```


2. Fetch Flutter packages:
```bash
flutter pub get

```


3. Run the application:
```bash
flutter run

```



---

## Code Reference

### `lib/main.dart`

```dart
import 'package:flutter/material.dart';
import 'profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F6FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A6572),
          primary: const Color(0xFF34495E),
          secondary: const Color(0xFFF39C12),
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}

```

### `lib/profile_screen.dart`

```dart
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: theme.colorScheme.secondary,
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Jane Doe',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Mobile App Developer',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: theme.colorScheme.secondary,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'New York, USA',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    size: 18,
                    color: theme.colorScheme.secondary,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'jane.doe@example.com',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

<img width="1180" height="581" alt="Screenshot 2026-09-03 at 1 37 46 PM" src="https://github.com/user-attachments/assets/22748e63-287a-4abe-9fc6-7dd493d2a859" />
