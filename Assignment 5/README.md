# Modular Stateful Todo Application

A modern, responsive, and fully functional Todo List application built with Flutter. This project demonstrates state management using `StatefulWidget` and `setState`, interactive UI flows with modal bottom sheets, and modular codebase architecture across multiple files.

---

## 🚀 Features

* **Task Management:** Create new tasks, toggle task completion, and delete unwanted items.
* **Dynamic Visuals:** Completed tasks feature strike-through text styling and muted color transitions.
* **Modal Task Input:** Sleek `showModalBottomSheet` for task creation with smooth keyboard-aware padding.
* **Modular Architecture:** Clean separation of concerns between app configuration (`main.dart`) and UI state logic (`todo_screen.dart`).
* **Empty State Handling:** Friendly placeholder messaging when no tasks are present in the list.

---

## 🛠️ Tech Stack & Architecture

* **Framework:** Flutter (Material 3 enabled)
* **Language:** Dart
* **State Management:** Ephemeral State (`StatefulWidget` & `setState`)

### File Structure

```plaintext
lib/
├── main.dart        # Application entry point, MaterialApp setup & root theme
└── todo_screen.dart # TodoItem model, stateful business logic & main screen UI