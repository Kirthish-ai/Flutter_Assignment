# Dynamic Product Listing & Filtering App

A sleek, responsive, and modern Flutter application demonstrating dynamic product rendering using `ListView.builder`, state management using `setState`, real-time search, and category filtering.

---

## 📸 Overview

This application showcases a real-world e-commerce product catalog with interactive features including:
- **Dynamic Data Modeling**: Structured `Product` data model.
- **Real-Time Search**: Instant search matching against product names.
- **Category Filtering**: Horizontal interactive filter chips extracted dynamically from dataset categories.
- **INR (₹) Currency Formatting**: Styled pricing displayed in Indian Rupees.
- **Custom Empty State**: Visual indicator when no products match search criteria.

---

## 📁 Project Architecture & File Organization

The application follows a clean separation of concerns:

```
lib/
├── main.dart       # Program Entry Point, Material Theme & Interactive Screen UI Logic
└── product.dart    # Product Data Model Class & In-Memory Sample Dataset
```

---

## 🛠️ Features Breakdown

### 1. Product Data Model (`product.dart`)
Includes field properties for `id`, `name`, `category`, `price` (in INR), `icon`, and custom `themeColor` accents.

### 2. State Management & Filtering (`main.dart`)
- Uses `setState()` to compute intersected search and category filter results dynamically.
- `TextEditingController` captures string inputs with an auto-clear button.

### 3. Responsive Material 3 UI
- Custom title header replacing standard rigid AppBars.
- Animated selection chips (`AnimatedContainer`).
- Clean elevated product cards with custom theme icons and formatted price tags.

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
- Dart SDK installed.
- VS Code or Android Studio with Flutter extensions.

### Installation & Run

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd product_listing_app
   ```

2. **Fetch dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

---

## 💻 Tech Stack
- **Framework:** Flutter (Material 3)
- **Language:** Dart
- **State Management:** Ephemeral State (`setState`)

<img width="1470" height="956" alt="Screenshot 2026-09-14 at 9 07 05 PM" src="https://github.com/user-attachments/assets/7abb2b7b-c7c6-435a-ab5c-db38d0ba4600" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 9 07 21 PM" src="https://github.com/user-attachments/assets/9a61a12c-8871-4e94-ba9f-109947c02c57" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 9 07 28 PM" src="https://github.com/user-attachments/assets/74891c3a-f7ac-437c-a65b-4f01053c09b1" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 9 07 34 PM" src="https://github.com/user-attachments/assets/a2ff9045-126f-49e0-9b26-6319aa017e6a" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 9 07 40 PM" src="https://github.com/user-attachments/assets/66914b01-e614-4cda-9d60-992df8ecf91f" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 9 07 47 PM" src="https://github.com/user-attachments/assets/1ed77bd9-f9f7-46ac-a915-e4c6e3016208" />

