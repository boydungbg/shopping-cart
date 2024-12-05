# Shopping cart

### Video Demo: <URL>
### Description
**1. Overview**

The Shoping Cart project using [Flutter Framework](https://flutter.dev) to build Android and iOS application that is a robust and scalable application designed to simplify online shopping experiences. It provides a dynamic, user-friendly interface for tracking purchases, and handling payments. The application supports adding, removing, and updating items in the cart, real-time price calculations, and seamless checkout integration with popular payment gateways.

**2. Folders and Architecture**

* **Project Structure**
    ```
    shopping_cart
    │   README.md
    │   pubspec.yaml   
    │   pubspec.lock
    │   devtools_options.yaml
    │   analysis_options.yaml
    │   .metadata
    │   .gitignore
    └───android
    └───ios
    └───assets
    └───tests
    └───lib
        │   main.dart
        └───common
        │   └───di
        │   └───exceptions
        │   └───locale
        │   └───route
        │   └───stream
        │   └───theme
        │   └───utils
        └───cubit
        │   └───cart
        │   └───home
        │   └───order
        └───entities
        │   └───cart
        │   └───order
        │   └───product
        └───extensions
        └───generated
        └───repository
        │   └───local
        │   │   cart_repository.dart
        │   │   product_repository.dart
        │   │   order_repository.dart
        │   └───remote
        └───screen
        │   └───cart_screen
        │   └───order_screen
        │   main_screen.dart       
        │   splash_screen.dart       
        │   empty_screen.dart       
        └───services
        │   base_service.dart       
        │   cart_service.dart       
        │   order_service.dart       
        │   product_service.dart       
        │   exception_handle.dart       
        └───widgets
    ```
* **Root Level**
  * .dart_tool/, .idea/, .vscode/, build/: Auto-generated directories for project setup and build artifacts. These are not manually edited.
  * android/, ios/: Platform-specific code for Android and iOS to support native functionalities.
  * assets/: Contains static assets like images, fonts, or JSON files.
  * test/: Includes unit and widget tests to ensure app reliability.
  * pubspec.yaml: Dependency manager for listing packages used in the project.
  * README.md: Documentation for understanding and using the project.
* **`lib` Directory**
  > The primary directory containing the application's source code. This directory is further divided into logical modules for better maintainability:

  * common/
    - Houses shared utilities, constants, and helper functions used across the application.
  * cubit/
      - Manages state using the Cubit state management pattern. Contains individual Cubit classes and their states for various features like cart management, order fetching, and product fetching.
  * entities/
    - Defines the core data models, such as:
      - Product: Represents product details (e.g., name, price, quantity).
      - CartItem: Represents items added to the cart.
      - Order: Represents order information.
  * extensions/
    - Contains Dart extensions that enhance the functionality of existing classes. For instance, formatting extensions for DateTime or String.
  * generated/
    - Auto-generated files, usually for localization or build tasks. These files are not manually edited.
  * repository/
    - Handles data-related operations such as fetching data from APIs or databases. Includes repository classes like:
      - ProductRepository: Manages product-related data.
      - CartRepository: Handles cart operations.
  * screen/
    - Contains UI screens representing different pages of the app, such as:
      - ProductScreen: Displays available products.
      - CartScreen: Manages cart interactions like adding or removing items.
  * services/
    - Includes classes for third-party services and place to interact with repository, handle logic business, exception error such as:
        - ProductService: Fetching list product from repository.
        - PaymentService: Integrates with payment gateways.
  * widgets/
    - Custom, reusable UI components like:
      - ProductCard: Displays product information.
      - CartItemTile: Displays individual cart items with options to modify quantity or remove items.
  * main.dart: The entry point of the application. Sets up the app, including navigation, theming, and state management.

    
- **Tech**
  - In project, using [Flutter](https://flutter.dev) for building beautiful, natively compiled, multi-platform applications from a single codebase.
  - Apply MVVM pattern Model–View–Viewmodel to organize code structure that help maintainability, testability and scalability. This pattern separate code UI, code business logic and data.
  - Using concept [Dependence Injection](https://www.freecodecamp.org/news/a-quick-intro-to-dependency-injection-what-it-is-and-when-to-use-it-7578c84fa88f) to manage initialized intance, increase reusability and testability.
  - [Function programing](https://resocoder.com/2023/12/05/practical-functional-programming-in-dart-flutter/) to reduce side effects, increase immutability and reuesability.
  - I have selected a few packages below to support me in application development:
    - [sqflite](https://pub.dev/packages/sqflite) - Using for manage data to local device
    - [freezed](https://pub.dev/packages/freezed) - Generator for data classes, unions, and cloning.
    - [get_it](https://pub.dev/packages/get_it) - This is a simple Service Locator for Dart and Flutter projects with some additional goodies highly inspired by Splat
    - [either_dart](https://pub.dev/packages/either_dart) - The library for error handling and railway oriented programming.
    - [flutter_bloc](https://pub.dev/packages/flutter_bloc) - Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern.


### Setup project

Install package following command

```flutter pub get```

Gennerate Assest, Dependenci, Mock Test run following command:

```dart run build_runner build --delete-conflicting-outputs```

### Run project

```flutter run```

### Run test

```flutter test```

### More document with Flutter;

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


 
