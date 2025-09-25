# Anime

A modern Flutter project built with **Clean Architecture** principles and designed for seamless backend integration.

---

## 🏗️ Architecture

This project follows **Clean Architecture** to ensure scalability, maintainability, and testability. The main layers are:

- **Presentation Layer:** UI and state management.
- **Domain Layer:** Business logic, use cases, and entities.
- **Data Layer:** Data sources, repositories, and models.

Each layer is decoupled, making the codebase easy to extend and refactor.

---

## 🔗 Backend Integration

Anime will integrate with a backend via RESTful APIs to fetch and display dynamic anime data. Error handling, loading states, and data updates are managed efficiently.

---

## 🚀 Getting Started

1. **Install requirements:**
   - Flutter SDK (latest recommended)
   - Dart SDK

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the app:**
   ```sh
   flutter run
   ```

---

## 📁 Project Structure

```
├─ lib
│  ├─ anime
│  │  ├─ anime_details
│  │  │  └─ presentation
│  │  │     ├─ controller
│  │  │     ├─ screen
│  │  │     │  └─ anime_details_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ anime_categorization_text.dart
│  │  │        ├─ anime_overview_classifications.dart
│  │  │        └─ bottom_nav_buttons.dart
│  │  ├─ home
│  │  │  ├─ data
│  │  │  │  ├─ data_sources
│  │  │  │  ├─ models
│  │  │  │  └─ repositories
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  ├─ repositories
│  │  │  │  └─ use_cases
│  │  │  └─ presentation
│  │  │     ├─ controller
│  │  │     ├─ screen
│  │  │     │  └─ home_screen.dart
│  │  │     └─ widgets
│  │  │        ├─ anime_card_item_widget.dart
│  │  │        ├─ anime_character_item_widget.dart
│  │  │        └─ categories_item_buttons.dart
│  │  ├─ layout
│  │  │  └─ layout_nav.dart
│  │  └─ upgrade_plan
│  │     ├─ data
│  │     │  ├─ data_sources
│  │     │  ├─ models
│  │     │  └─ repositories
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  ├─ repositories
│  │     │  └─ use_cases
│  │     └─ presentation
│  │        ├─ controller
│  │        ├─ screen
│  │        │  └─ upgrade_plan_screen.dart
│  │        └─ widgets
│  │           └─ select_plan_card.dart
│  ├─ anime_app.dart
│  ├─ core
│  │  ├─ common_widgets
│  │  │  ├─ container
│  │  │  │  └─ circular_container_with_box_shadow.dart
│  │  │  ├─ heading
│  │  │  │  ├─ section_heading.dart
│  │  │  │  └─ title_and_subtitle_in_column.dart
│  │  │  ├─ in_row
│  │  │  │  └─ icon_with_text_in_row.dart
│  │  │  └─ vertical_divider_line.dart
│  │  ├─ constants
│  │  │  ├─ anime_colors.dart
│  │  │  └─ anime_strings.dart
│  │  ├─ helper
│  │  │  ├─ extensions.dart
│  │  │  └─ helper_functions.dart
│  │  ├─ networking
│  │  ├─ routing
│  │  │  ├─ app_router.dart
│  │  │  └─ routes.dart
│  │  ├─ service_locator
│  │  └─ theme
│  │     ├─ anime_theme.dart
│  │     └─ custom_themes
│  │        ├─ anime_text_theme_extension.dart
│  │        ├─ app_bar_theme_extension.dart
│  │        ├─ elevated_button_theme_extension.dart
│  │        └─ text_theme.dart
│  ├─ gen
│  │  ├─ assets.gen.dart
│  │  └─ fonts.gen.dart
│  └─ main.dart
```
---

> **Note:** This project is under active development and will be updated regularly with new features and improvements.
