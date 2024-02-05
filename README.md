# Flutter Developer Assessment

This repository contains the solution for the Flutter developer assessment. The primary task was to implement a single responsive screen based on the provided UI design using Dart/Flutter. Additionally, integration with a mock JSON REST API was required.

## Assessment Details

### Primary Task

My challenge was to implement a single responsive screen based on the provided UI design using Dart/Flutter. The assessment evaluated not just coding skills but also the ability to structure a project effectively. The responsiveness of the screen across different devices was a critical factor in judging the successful completion of the project.

## Figma Design Link

[Figma Assessment Link](https://www.figma.com/file/aWwsjBpuFG7YMMO6DfCOcq/ASSESSMENT---HOVASTORE?type=design&node-id=1-298&mode=design&t=MHRXpo6nhjXozdEo-0)

## Project Structure

The Flutter project follows a simple directory structure:
project_root/
│
├── lib/
│ ├── main.dart
│ ├── constants.dart
│ ├── screens/
│ │ ├── mobile/
│ │ └── tablet/
│ │ └── home.dart
│ ├── theme/
│ │ └── theme.dart
│ ├── models/
│ │ └── api_response.dart
│ └── constants.dart
├── assets/
│ └── images/
│ └── logo.png
├── test/
│ └── widget_test.dart
├── pubspec.yaml
└── README.md

- `lib/`: This directory contains all the Dart source code for the project.
  - `main.dart`: Entry point of the Flutter application.
  - `constants.dart`: Contains application-wide constant values.
  - `screens/`: Contains screen widgets organized by device type (e.g., mobile, tablet).
    - `mobile/`: Directory for mobile-specific screen widgets.
    - `tablet/`: Directory for tablet-specific screen widgets.
      - `home.dart`: Home screen widget.
  - `theme/`: Contains theme-related configurations and styles.
    - `theme.dart`: Definition of the application theme.
  - `models/`: Contains data models used within the application.
    - `api_response.dart`: Model for API response data.
- `assets/`: Contains static assets like images used in the application.
  - `images/`: Directory for image assets.
    - `logo.png`: Application logo image.
- `test/`: Contains widget tests for the application.
  - `widget_test.dart`: Test file for widget testing.
- `pubspec.yaml`: Configuration file for managing dependencies and assets.
- `README.md`: Project documentation file.

This structure helps organize the codebase into logical modules, making it easier to navigate and maintain the Flutter project.

## Getting Started

To run this Flutter project locally, follow these steps:

### Prerequisites

Before you begin, ensure you have met the following requirements:

- Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- Set up your preferred IDE for Flutter development (e.g., Android Studio, VS Code): [Flutter IDE Setup Guide](https://flutter.dev/docs/get-started/editor)
- Have an Android emulator or iOS simulator set up, or connect a physical device for testing: [Flutter Device Setup Guide](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository to your local machine:

   ```sh
   git clone https://github.com/aimedidierm/hovastore_developer_assessment.git
   ```

2. Navigate to the project directory:

   ```sh
   cd hovastore_developer_assessment
   ```

3. Install dependencies

   ```sh
   flutter pub get
   ```

## Deployment

To deploy this Flutter project, you have a few options depending on your requirements:

### 1. Local Deployment

If you simply want to deploy the app locally for testing purposes or personal use, you can follow the same steps mentioned in the "Getting Started" section to run the app on your emulator, simulator, or physical device.

### 2. Deployment to Mobile Devices

To deploy the app to mobile devices for distribution outside of development environments, you can generate platform-specific build files using Flutter's build commands:

#### Android Deployment

For deploying to Android devices, you can generate an APK (Android Package) file using the following command:

```sh
flutter build apk
```

## Technologies Used

The following technologies, frameworks, and tools were used in the development of this Flutter project:

- **Flutter**: Google's UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Dart**: The programming language used for building Flutter apps, providing features such as strong typing, asynchronous programming, and a rich standard library.
- **Visual Studio Code (VS Code)**: A lightweight and powerful code editor used for writing, editing, and debugging Dart and Flutter code.
- **Android Studio**: An integrated development environment (IDE) specifically designed for Android app development, which includes robust support for Flutter.
- **Git**: A distributed version control system used for tracking changes in the project's source code and collaborating with other developers.
- **GitHub**: A web-based hosting service for version control using Git, utilized for storing the project's source code, managing issues, and facilitating collaboration.
- **Figma**: An online collaborative design tool used for creating and sharing UI/UX designs, providing a reference for implementing the app's visual elements.
- **MockAPI.io**: A platform for creating mock APIs used for simulating backend services and testing API integrations in the Flutter application.
- **Flutter packages**: Various Flutter packages were used for adding specific functionalities to the app, such as HTTP requests, state management, and UI components. Some examples include:
  - `http`: A package for making HTTP requests and fetching data from remote servers.
- **Flutter DevTools**: A suite of debugging and performance analysis tools for Flutter apps, used for diagnosing issues, profiling performance, and inspecting UI layouts during development.

These technologies, frameworks, and tools collectively contributed to the development and successful implementation of the Flutter project.

## Screenshots

If applicable, include screenshots of the implemented screen on different devices.

## License

This Flutter project is distributed under the MIT License. See the [LICENSE](LICENSE) file for details.
