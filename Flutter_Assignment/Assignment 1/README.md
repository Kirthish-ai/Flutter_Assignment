# Dart OOP & Data Collections: Library System Project

A modular Dart console application demonstrating core Object-Oriented Programming (OOP) paradigms, collection types (`List`, `Map`, `Set`), and modular software design patterns.

---

## 📁 Project Structure

```text
lib/
├── task1_class.dart         # Class definitions and property encapsulation
├── task2_constructor.dart   # Generative and named constructors
├── task3_methods.dart       # Methods, computational logic, and operations
├── task4_inheritance.dart   # Class extension, polymorphism, and method overriding
├── task5_mixin.dart         # Code reuse across hierarchies using Mixins
├── task6_interface.dart     # Contract enforcement via implicit interfaces
├── task7_list.dart          # Ordered collections and iteration
├── task8_map.dart          # Key-value associations and dictionary lookups
├── task9_set.dart          # Unique element collections and deduplication
├── task10_library.dart      # Domain model and integrated library subsystem
└── main.dart                # Application entry point orchestrating all tasks
```

---

## 🎯 Task Breakdown

| File | Core Concept | Implementation Detail |
|---|---|---|
| `task1_class.dart` | **Classes & Fields** | Models a `Book` entity with `title` and `author` attributes. |
| `task2_constructor.dart` | **Constructors** | Demonstrates generative and named constructors on a `Student` entity. |
| `task3_methods.dart` | **Class Methods** | Implements arithmetic operations within a `Calculator` utility class. |
| `task4_inheritance.dart` | **Inheritance** | `PremiumMember` extends base `Member` and overrides behavior. |
| `task5_mixin.dart` | **Mixins (`with`)** | Reusable `Printable` behavior mixed into a `Report` generator. |
| `task6_interface.dart` | **Interfaces (`implements`)** | Enforces `showDetails()` contract via the `Describable` abstract class. |
| `task7_list.dart` | **Lists** | Demonstrates ordered iteration over book collections. |
| `task8_map.dart` | **Maps** | Key-value mapping between book titles and their respective authors. |
| `task9_set.dart` | **Sets** | Uniqueness enforcement and deduplication of library genres. |
| `task10_library.dart` | **Integration** | Assembles members and books into a central `Library` system. |

---

## 🚀 Getting Started

### Prerequisites
* [Dart SDK](https://dart.dev/get-dart) (`>=3.0.0`) installed on your system.

### Running the Application

1. Navigate to the project directory:
   ```bash
   cd lib
   ```

2. Run the main driver file:
   ```bash
   dart run main.dart
   ```

---

## 💻 Sample Output

```text
--- Task 1 ---
Title: The Alchemist, Author: Paulo Coelho

--- Task 2 ---
Student Name: Mahesh, Age: 19

--- Task 3 ---
5 + 3 = 8.0

--- Task 4 ---
Premium Member: Aman (Free delivery & extended loan duration)

--- Task 5 ---
[PRINT]: Generating library status report...

--- Task 6 ---
Details for book: "Atomic Habits"

--- Task 7 ---
List of Books:
- The Alchemist
- 1984
- Atomic Habits

--- Task 8 ---
Book-Author Registry:
The Alchemist -> Paulo Coelho
Atomic Habits -> James Clear
1984 -> George Orwell

--- Task 9 ---
Unique Categories: Fiction, Self-Help, Sci-Fi

--- Task 10 ---

--- Library Summary ---
Total Books: 1
Total Members: 1
```

---

## 🧠 Key Takeaways

* **Inheritance vs. Mixins vs. Interfaces:** Clear separation between identity inheritance (`extends`), behavioral contracts (`implements`), and cross-cutting reusable capabilities (`with`).
* **Clean Data Management:** Leveraged idiomatic Dart collections (`List`, `Map`, `Set`) to maintain predictable, deduplicated, and efficiently indexed state.
* **Separation of Concerns:** Each concept is encapsulated in its own file to maintain high cohesion and low coupling across the application.
