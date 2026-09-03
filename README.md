# Flutter & Dart Assignment 

A modular collection of Dart and Flutter assignments covering foundational Object-Oriented Programming (OOP), asynchronous network simulations with null safety, and declarative UI development.

---

## Repository Structure

```text
Flutter_Assignment/
├── Assignment 1/             # Modular Dart OOP & Collections Suite
├── Assignment 2/             # Asynchronous API, Null Safety & Event Streaming
└── Assignment 3/             # Flutter Profile Card UI Application
    └── lib/
        ├── main.dart
        └── profile_screen.dart

```

---

## Assignment Overviews

### Assignment 1: Modular Dart OOP Library System

Focuses on core object-oriented principles, modular separation of concerns, and Dart's built-in collection types.

* **Core Topics Covered:**
* **Class & Encapsulation:** Class definitions, member variables, and state formatting (`task1_class.dart`).


* **Constructors:** Parameterized positional parameters and named constructors with `required` arguments (`task2_constructor.dart`).


* **Methods & Logic:** Arithmetic operations with expression-bodied arrow syntax (`=>`) and zero-division exception handling (`task3_methods.dart`).


* **Inheritance & Polymorphism:** Base class extension using `extends`, constructor delegation via `super()`, and method overriding (`task4_inheritance.dart`).


* **Mixins & Interfaces:** Horizontal code sharing using `mixin ... with` and interface contracts enforced via `abstract class ... implements` (`task5_mixin.dart`, `task6_interface.dart`).


* **Collections Suite:** Ordered iterations (`List`), key-value associations (`Map`), and automatic deduplication (`Set`) (`task7_list.dart` to `task9_set.dart`).


* **System Integration:** Encapsulated library orchestrator tracking books and member types (`task10_library.dart`, `main.dart`).





---

### Assignment 2: Asynchronous Dart API, Null Safety & Event Streaming

Demonstrates non-blocking concurrency, compile-time sound null safety, and event-driven data streaming in Dart.

* **Core Topics Covered:**
* **Sound Null Safety:** Strongly-typed domain models (`OrderData`) handling nullable fields (`String?`) and fallback default displays using null-coalescing operators (`??`).


* **Network Simulation:** Mock REST service (`fetchMockOrderApi`) simulating latency via `Future.delayed` and emitting multiple response scenarios (success, null values, 404 timeouts, and server errors).


* **Structured Exception Routing:** Granular fault handling separating `on TimeoutException` from generic runtime crashes (`catch`) with unconditional cleanup in `finally` blocks.


* **Reactive Streams:** Continuous asynchronous delivery and scoring simulation using generator functions (`async*`) and the `yield` keyword.





---

### Assignment 3: Modular Flutter Profile Card Screen

A responsive user profile card screen demonstrating standard Flutter layout patterns, widget composition, and design system theming.

* **Core Topics Covered:**
* **Architecture Separation:** Clean isolation between app initialization/theming (`main.dart`) and the visual layout tree (`profile_screen.dart`).


* **Theme Configuration:** Global branding derived via `ThemeData` and `ColorScheme.fromSeed` to propagate dynamic color tokens throughout descendant widgets.


* **Widget Composition:**
* `Container`: Dimensional constraints (`width: 320`), rounded border styling, and drop shadows.


* `Column` & `Row`: Vertical ordering (`MainAxisSize.min`) and horizontally aligned metadata rows.


* `CircleAvatar` & `Icon`: Profile glyph avatar and theme-colored vector icons.


* `Text`: Typography hierarchy with distinct font weights and colors.







---

## Execution Guide

### Running Assignment 1 & 2 (Dart CLI)

Navigate to the assignment directory and execute via the Dart runtime:

```bash
# Assignment 1
cd "Assignment 1"
dart run main.dart

# Assignment 2
cd "../Assignment 2"
dart run async_dart_desi.dart

```

### Running Assignment 3 (Flutter UI)

Launch the Flutter application on a connected device, emulator, or simulator:

```bash
cd "Assignment 3"
flutter pub get
flutter run

```
