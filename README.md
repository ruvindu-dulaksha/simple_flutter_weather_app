🌤️ Weather App with Theme Mode & Preferences
This Flutter application fetches real-time weather data using the OpenWeather API, and includes support for light and dark themes. The user's theme preference is stored using SharedPreferences, ensuring the app remembers their choice on future launches.

🚀 Features
🌦️ Real-Time Weather
Retrieves current weather data based on user’s location or search input using OpenWeather API.

🌗 Dark & Light Mode
Dynamically switches between dark and light themes. User-selected mode is applied app-wide.

💾 Persistent Theme Preference
Saves the user’s theme mode using SharedPreferences, even after restarting the app.

📱 Responsive UI
Clean, simple, and adaptable design across screen sizes.

🔧 Technologies Used
Flutter (UI Toolkit)

Dart

Provider (State Management)

OpenWeather API

SharedPreferences (Persistent Storage)

🛠️ Setup Instructions
1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/your-username/weather-app.git
cd weather-app
2. Install Dependencies
bash
Copy
Edit
flutter pub get
3. Add OpenWeather API Key
Create a file named .env (or update in your config service) and add your API key:

ini
Copy
Edit
OPENWEATHER_API_KEY=your_api_key_here
Or directly replace in your weather service file:

dart
Copy
Edit
const String apiKey = 'your_api_key_here';
4. Run the App
bash
Copy
Edit
flutter run
🧠 How It Works
Weather Fetching:
Weather data is fetched using an HTTP request to OpenWeather’s REST API.

State Management with Provider:
App state (like weather data and theme mode) is managed using Provider for a clean and scalable architecture.

Shared Preferences:
Saves and loads the last selected theme mode during app startup.
