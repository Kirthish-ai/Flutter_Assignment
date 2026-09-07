# Adaptive Flutter Enterprise Dashboard

A responsive, multi-section dashboard application built with Flutter. It dynamically adapts its UI layout across Mobile, Tablet, and Desktop viewports using Flutter's adaptive layout patterns (`LayoutBuilder`, `MediaQuery`, `NavigationRail`, `NavigationDrawer`, and `SliverGrid`).

---

## Features

- **Multi-Device Breakpoint Support**:
  - **Mobile (`< 600px`)**: Compact single-column layout with collapsible drawer navigation.
  - **Tablet (`600px - 1100px`)**: Two-column responsive metric grid with a slim `NavigationRail`.
  - **Desktop (`>= 1100px`)**: Four-column dynamic metric grid, full-width `NavigationDrawer` sidebar, and dual-panel analytical view.
- **Dynamic Metric Cards**: Adaptive metric summary cards built with defensive text sizing (`FittedBox`) to prevent overflow bugs.
- **Sliver Grid & Custom Scroll Views**: Infinite, smooth scroll behavior across nested list views and grid items.
- **Material 3 Theming**: Built-in modern Material Design components.

---

## Project Structure

```text
lib/
├── main.dart             # Application entry point and root MaterialApp configuration
└── dashboard_screen.dart # Core responsive dashboard logic and UI components