A Flutter mobile application for discovering recipes, managing favorites, and user authentication.

## Overview

The Recipe App is a mobile application built with Flutter that allows users to explore a wide range of recipes, save their favorite recipes, and authenticate themselves for a personalized experience. The app follows a presentation layer architecture (MVVM) combined with clean architecture principles for the other layers.

## Features

- Recipe Discovery: Browse and search for recipes based on keywords, ingredients, or categories.
- Recipe Details: View detailed information about each recipe, including ingredients, cooking instructions, and preparation time.
- Favorite Recipes: Save recipes to a favorites list for quick access and personalization.
- User Authentication: Secure user login system for an enhanced experience.

## Tech Stack

The Recipe App is built with the following technologies:

- Flutter: A cross-platform framework for building mobile applications.
- MVVM Architecture: Presentation layer architecture for efficient data flow and separation of concerns.
- Clean Architecture: A software architecture pattern for maintaining the separation of concerns between different layers of the application.
- Local Database:  A local database used for storing recipe and user information.
- Unit Testing: Comprehensive unit tests written using the Flutter testing framework and other relevant testing libraries.

## Getting Started

Follow these steps to set up the project on your local machine:

1. Clone the repository: `git clone https://github.com/MohamedGomaaRadwan/RecipeApp.git`
2. Install Flutter: Make sure you have Flutter version 3.10.4 installed on your machine. You can download Flutter from the [Flutter website](https://flutter.dev) or update your Flutter version using `flutter upgrade`.
3. Install Dependencies: Run `flutter pub get` to install the required dependencies.
3. build generated files: Run `flutter packages pub run build_runner build --delete-conflicting-outputs`.
4. Run the App: Use the command `flutter run` to launch the app on your connected device or emulator.
5. you can use the email `Admin@gmail.com` and the password is `Admin` to login

## Unit Testing

The Recipe App includes comprehensive unit tests for key features and functionalities. The following components have been tested:

- Authentication Bloc: Unit tests for validating user authentication events and states.
- Favorite Bloc: Tests for managing favorite recipes and related state changes.
- Add to Favorite Cubit: Tests for adding recipes to the favorites list.
- Recipe Bloc: Unit tests for fetching and displaying recipes with different events and states.

To run the unit tests, use the command `flutter test` in the project directory.
