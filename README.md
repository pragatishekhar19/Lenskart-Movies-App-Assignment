🎬 Lenskart Movies App (Flutter)
This project is developed as part of the **Lenskart Mobile App Development Internship Assignment**.  
The application allows users to browse movies, search for them, add to favourites or watchlist, and view detailed movie information using data from the **TMDB API**.
The focus of this project is **clean architecture, readable code, proper state handling, and a minimal Material UI**, aligned with real-world mobile development practices.

📱 Application Flow

Splash Screen  
→ Home Screen (Bottom Navigation)  
→ Movies | Favourites | Watchlist  
→ Movie Details Screen  

✨ Features Implemented

🔹 Core Features
- Splash screen with dummy image
- Bottom navigation with:
  - Movies (Landing Screen)
  - Favourites
  - Watchlist
- Movie listing with:
  - Poster image
  - Movie name
  - Genre / category
- Search movies on the same screen
- Mark movies as:
  - ⭐ Favourites
  - ⏰ Watchlist
- Unique favourites & watchlist per user (local)

🔹 Movie Details Screen
- Movie banner
- Movie name
- Overview / description
- Release date
- Genre
- User rating displayed using **circular progress indicator**
- **Play Now** button
  - Shows in-app notification:  
    _"Movie is Playing"_

🔹 UX & UI
- Clean and minimal Material Design
- Responsive for common phone sizes
- Consistent spacing and typography

⚙️ State Handling

The app properly handles:
- ⏳ Loading state
- 📭 Empty state
- ❌ Error state (API failure / no internet)

🧰 Tech Stack Used

Frontend
- **Flutter** – Cross-platform UI framework
- **Dart** – Programming language
- **Material Design** – UI components

Backend / Data
- **TMDB API** – Movie data provider
- REST API + JSON parsing

Tools & Platform
- **Android SDK**
- **Java (JDK 8+)** – Required for Android builds
- **Git & GitHub** – Version control
- **VS Code / Android Studio**

📁 Project Structure

lib/
├── main.dart
├── core/
│ ├── constants/
│ ├── theme/
│ └── utils/
├── data/
│ ├── models/
│ ├── services/
│ └── repositories/
├── presentation/
│ ├── screens/
│ ├── widgets/
│ └── navigation/\

This structure separates **UI, business logic, and data**, making the app scalable and easy to maintain.


🔌 API Used

**TMDB – The Movie Database**  
https://www.themoviedb.org/

> An API key is required to fetch movie data.

▶️ How to Run the Project (Step-by-Step)

1️⃣ Prerequisites

Install the following:
- Flutter SDK
- Java JDK (8 or above)
- Android Studio or VS Code
- Chrome browser (for web run)

Check setup:
flutter doctor
2️⃣ Clone the Repository
bash
Copy code
git clone <your-github-repo-url>
cd lenskart_movies_app
3️⃣ Install Dependencies
bash
Copy code
flutter pub get
4️⃣ Add TMDB API Key
Create the file:
lib/core/constants/api_constants.dart
Add:
const String tmdbApiKey = "YOUR_TMDB_API_KEY";
5️⃣ Run the Application
✅ Option 1: Run on Chrome (No Emulator Needed)

flutter run -d chrome

✅ Option 2: Build APK (Optional)

flutter build apk

📝 Commands Summary

flutter doctor
flutter pub get
flutter run -d chrome
flutter build apk

📌 Assumptions & Notes

No authentication implemented 
Internet connection required for API calls
Favourites & Watchlist stored locally
Clean UI prioritized over heavy animations
Code written with readability and maintainability in mind

📦 Submission Guidelines Followed
GitHub-based submission
Clean folder structure
Readable and structured code
Proper README with setup and run instructions
Original implementation

👩‍💻 Author
Pragati Shekhar
Mobile App Development Intern Applicant
Lenskart
