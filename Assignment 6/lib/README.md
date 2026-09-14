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

