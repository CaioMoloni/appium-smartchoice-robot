# Mobile App Test Automation with Robot Framework and Appium

This repository contains automated tests for a mobile app using Robot Framework and AppiumLibrary.

## 🚀 Getting Started

### Prerequisites

- Python (3.6 or higher)
- Robot Framework (`pip install robotframework`)
- AppiumLibrary (`pip install robotframework-appiumlibrary`)
- JSONLibrary (`pip install robotframework-jsonlibrary`)
- Appium Server (Download and install from [Appium](http://appium.io/))

### Installation

1. **Clone this repository:**
   ```sh
   git clone https://github.com/your-username/mobile-app-test-automation.git

2. Navigate to the project directory:
    ```sh
   cd mobile-app-test-automation

3. Install the required libraries:
    ```sh
   pip install robotframework-jsonlibrary
   pip install robotframework-requests

📂 Project Structure
The project follows a structured folder and file hierarchy suitable for mobile app test automation:
  ```sh
  ENV/                 # Contains .json file with Appium capabilities for different environments
  Resources/           # Keywords, locators, and project configuration
  global/             # Project-wide configuration and mobile session setup for Android and iOS
  Locator/            # Defines locators for each page
  Pages/              # Defines page objects along with keywords
  Paths/              # Defines paths to locators as variables for Android and iOS
  Tests/authentication/ # Test cases for authentication pages
  ```
🏃 Running Tests

To run the tests, execute the following command in the terminal:
  ```sh
    robot Tests/authentication/
 ```
⚙️ Configuration

Define your Appium capabilities in the .json file within the ENV/ directory.
Update the project-wide configuration in Resources/global/.

📝 Page Objects

Page objects are defined in the Resources/Pages/ directory along with keywords specific to each page.

🧪 Test Cases

Test cases are defined in the Tests/authentication/ directory. Each test case imports necessary page objects and keywords.

👨 Authority

This code was made by Caio Moloni (https://www.linkedin.com/in/caio-henrique-de-paula-moloni-06999a143/)
