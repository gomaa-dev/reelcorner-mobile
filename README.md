# 🎬 Reelcorner Mobile

<div align="center">

  ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
  ![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
  ![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)
  ![PowerSync](https://img.shields.io/badge/PowerSync-00D2B4?style=for-the-badge&logo=sqlite&logoColor=white)
  ![BLoC](https://img.shields.io/badge/State_Management-BLoC-blue?style=for-the-badge)

  <br />

  **A modern, feature-packed, offline-first social media application built with Flutter, Supabase, and PowerSync.**

</div>

---

## 🌟 Overview

**Reelcorner** is a full-featured social networking mobile application designed for seamless media sharing, real-time engagement, and offline resilience. Powered by **PowerSync** and **Supabase**, Reelcorner provides an ultra-responsive user experience with instant local reads/writes and background database synchronization.

---

## ✨ Key Features

- 📱 **Offline-First Synchronization**: Instant UI updates backed by local SQLite via PowerSync, syncing seamlessly with Supabase when online.
- 🎞️ **Reels & Video Feed**: Immersive video playback, dynamic feed scrolling, like animations, and post popups.
- 🎨 **Stories Editor**: Rich media creation suite featuring dynamic text animations, sticker overlays, and gesture controls.
- 💬 **Real-Time Direct Messaging**: Instant chat threads, status updates, and interactive user interactions.
- 👤 **User Profiles & Social Graph**: Interactive user profiles, follow/unfollow system, stories highlight integration, and post previews.
- 🔍 **Search & Discover**: Fast user lookup and content exploration.
- 🔔 **Push Notifications**: Firebase Cloud Messaging (FCM) integration for real-time notifications.
- 🌓 **Light & Dark Theme**: Flexible UI design supporting light and dark modes tailored with `flex_color_scheme`.

---

## 🏗️ Architecture & Monorepo Structure

Reelcorner follows a clean, modular **Layered Monorepo Architecture** prioritizing maintainability, testability, and separation of concerns.

```text
reelcorner/
├── lib/                        # Core Application Code
│   ├── app/                    # App initialization & global providers
│   ├── auth/                   # Authentication screens & flows
│   ├── chats/                  # Direct messaging UI & logic
│   ├── feed/                   # Social feed & post interactions
│   ├── reels/                  # Vertical video player & reels view
│   ├── stories/                # Stories view & editor integration
│   ├── user_profile/           # Profile views & settings
│   └── navigation/             # App routing powered by GoRouter
│
└── packages/                   # Modular Internal Packages
    ├── app_ui/                 # Design system, theme, and reusable UI widgets
    ├── authentication_client/  # Supabase Auth client & token storage
    ├── powersync_repository/   # Local-first PowerSync database sync layer
    ├── posts_repository/       # Posts domain logic & data models
    ├── stories_repository/     # Stories domain & state logic
    ├── stories_editor/         # Interactive story creation canvas
    ├── chats_repository/       # Real-time chat repository
    ├── notifications_client/   # FCM notifications integration
    ├── user_repository/        # User social graph & profile management
    └── shared/                 # Utilities, helpers, and shared primitives
```

---

## 🛠️ Tech Stack

- **Framework**: [Flutter](https://flutter.dev/) (Dart >=3.9.0)
- **Backend / Database**: [Supabase](https://supabase.com/) & [PowerSync](https://www.powersync.com/) (Offline-first sync)
- **State Management**: [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) & [`hydrated_bloc`](https://pub.dev/packages/hydrated_bloc)
- **Routing**: [`go_router`](https://pub.dev/packages/go_router)
- **Design System**: [`app_ui`](packages/app_ui), [`flex_color_scheme`](https://pub.dev/packages/flex_color_scheme)
- **Notifications**: Firebase Cloud Messaging (FCM)

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed on your machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.35.7 or higher)
- [Dart SDK](https://dart.dev/get-dart) (v3.9.0 or higher)
- Android Studio / Xcode for emulators and native tooling

### 1. Clone the Repository

```bash
git clone https://github.com/gomaa-dev/reelcorner-mobile.git
cd reelcorner-mobile
```

### 2. Install Dependencies

Fetch dependencies for the main app and all local packages:

```bash
flutter pub get
```

### 3. Environment Configuration

Set up environment keys for Supabase and PowerSync in your configuration package (`packages/env`).

### 4. Running the App

Choose the target environment flavor:

```bash
# Run Development
flutter run -t lib/main_development.dart

# Run Staging
flutter run -t lib/main_staging.dart

# Run Production
flutter run -t lib/main_production.dart
```

---

## 🧪 Testing

Run unit and BLoC tests across the codebase:

```bash
flutter test
```

---

## 📄 License

This project is proprietary and all rights are reserved by [gomaa-dev](https://github.com/gomaa-dev).
