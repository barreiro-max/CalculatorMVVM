# CalculatorMVVM

A SwiftUI calculator app built with **MVVM architecture**, featuring **error handling**, **button press animations**, **Dependency Injection (DI)**, and a **stack-based RPN calculation engine**.  

The app uses a **Facade pattern** to simplify the ViewModel: all calculation logic (Preprocessor → Lexer → Parser → RPN Calculator) is handled inside the Facade, allowing the ViewModel to remain “dumb” and focus only on providing results to the UI.

---

## Demonstration

https://github.com/user-attachments/assets/eb2030aa-3946-4145-8838-16d6b09196dc

---

## ✨ Features

- 🔢 Basic calculator operations
- ⚡ Reverse Polish Notation (RPN) calculation using a stack
- 🛠 Error handling with proper feedback
- 🎨 Animated button presses
- 🧩 Dependency Injection for modularity and testability
- 🏗 Facade pattern to encapsulate full calculation pipeline:
  - Preprocessor
  - Lexer
  - Parser
  - RPN Calculator

---

## 🧠 Architecture

- **MVVM**: clear separation between Views, ViewModels, and Models
- **Facade**: exposes a simple interface for ViewModels, hiding the complex calculation pipeline
- **DI**: promotes testability and modularity
- **SwiftUI**: reactive UI automatically updated when ViewModel state changes

---

## 🔹 Notes

- Modern SwiftUI calculator using MVVM, DI, and a clean RPN calculation pipeline
- Facade pattern ensures ViewModel stays simple while handling full calculation logic
- Error handling and button press animations included

---

## 📄 License

This project is licensed under the **MIT License**.
