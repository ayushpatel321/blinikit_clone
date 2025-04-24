
# Blinkit UI Clone (Home Screen)

A clean and responsive Flutter UI clone of the Blinkit (Grofers) home screen. Built using Flutter 3 and designed to mimic the real-world grocery delivery app layout.

---

## ✨ Features

- Top app bar with location, search bar, and profile icon
- Horizontal category list with images
- Auto-playing offer banners carousel
- Product grid with name, image, price, weight, and add-to-cart button
- Bottom navigation bar
- Local asset images (no network dependency)

---

## 📷 Screenshots

![Home Screen](screenshot/home.png)

---

## 🛠️ Tech Stack

- **Flutter 3.x**
- **Dart**
- **State Management**: setState (basic)
- **UI Libraries**: 
  - `carousel_slider`
  - `google_fonts`
- **Assets**: Local image assets

---

## 📁 Folder Structure

```
lib/
 ┣ screens/
 ┃ ┗ home_screen.dart
 ┣ widgets/
 ┃ ┣ product_tile.dart
 ┃ ┣ banner_carousel.dart
 ┃ ┗ category_list.dart
 ┣ models/
 ┃ ┗ product_model.dart
 ┣ assets/
 ┃ ┗ images/
 ┣ main.dart
```

---

## ⚙️ How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/ayushpatel321/blinikit_clone.git
   cd blinikit_clone
   ```

2. Install packages:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

---

## ✅ What I Would Improve

- Implement search functionality with filters
- Add state management using Provider or Riverpod
- Add actual cart logic and product details page
- Fully responsive layout for tablets

---

## 👨‍💻 Developed by

**Ayush Patel**  
[GitHub](https://github.com/ayushpatel321) | [LinkedIn](https://linkedin.com/in/ayushpatel2001)

---
