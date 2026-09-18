# Flutter 3-Screen App (Named Routes & Validation)

A modern, multi-screen Flutter application demonstrating **Named Routes navigation**, dynamic state handling, form validation, and data passing across screens using standard **Material 3 UI** design patterns.

---

## 📱 Application Screens

* **Home Screen (`/`)**: Welcome landing page with smooth gradient branding and a call-to-action button to start registration.
* **Registration Screen (`/register`)**: Form interface with real-time validation for full name, valid email formats, and minimum password lengths.
* **Detail Screen (`/detail`)**: Dynamic profile summary displaying user parameters passed through route arguments.

---

## ✨ Features

* 📍 **Named Routes Architecture**: Organized navigation stack managed in a centralized route mapping.
* ✍️ **Form Validation**: 
  * Required field checking (`TextFormField` validation).
  * Regex email pattern matching (`example@domain.com`).
  * Password length check (minimum 6 characters) with a show/hide toggle.
* 🔄 **Data Passing**: Route arguments map user input seamlessly from the form to the detail card.
* 🎨 **Material 3 UI Design**: Custom color palette, rounded text fields, elevated profile card layout, and responsive UI.

---
<img width="1181" height="702" alt="Screenshot 2026-09-18 at 2 32 29 PM" src="https://github.com/user-attachments/assets/81146f27-3874-4fca-ad5b-db5c090beef0" />
<img width="1190" height="679" alt="Screenshot 2026-09-18 at 2 32 38 PM" src="https://github.com/user-attachments/assets/aecb6f22-a034-4465-a4cd-59069fdb887e" />
<img width="1187" height="683" alt="Screenshot 2026-09-18 at 2 33 07 PM" src="https://github.com/user-attachments/assets/8043b52a-8dad-4ae1-8bf8-5c4fcd490301" />
<img width="1183" height="694" alt="Screenshot 2026-09-18 at 2 33 20 PM" src="https://github.com/user-attachments/assets/135bb823-6819-4818-98c4-d3a187c475a7" />


## 📁 File Structure

```text
lib/
├── main.dart           # App entry point, theme configuration, and route definitions
└── app_screens.dart    # HomeScreen, RegistrationScreen, and DetailScreen components
