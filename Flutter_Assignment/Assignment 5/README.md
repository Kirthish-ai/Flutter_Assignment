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

<img width="1193" height="706" alt="Screenshot 2026-09-11 at 12 15 42 AM" src="https://github.com/user-attachments/assets/dc3d513e-a60a-453b-b4fe-8abbace29be5" />
<img width="728" height="239" alt="Screenshot 2026-09-11 at 12 16 29 AM" src="https://github.com/user-attachments/assets/19b1d0f6-08d1-4d7b-8ad9-5d9996d333f7" />
<img width="1189" height="152" alt="Screenshot 2026-09-11 at 12 16 51 AM" src="https://github.com/user-attachments/assets/fa770d21-235f-4587-910e-7275e679439b" />


### File Structure

```plaintext
lib/
├── main.dart        # Application entry point, MaterialApp setup & root theme
└── todo_screen.dart # TodoItem model, stateful business logic & main screen UI
<<<<<<< HEAD
=======

>>>>>>> 4fd3efb (Assignment 6)
