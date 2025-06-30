import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_weather.dart';
import 'package:weather_app/proivder/theme_provider.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/widgets/display_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WeatherService _weatherService = WeatherService(
    apiKey: dotenv.env["OPEN_WEATHER_API_KEY"] ?? "",
  );
  WeatherModel? _weatherModel;

  //method to fetch the weather
  void fetchWeather() async {
    try {
      final WeatherModel = await _weatherService.getWeatherFromLocation();
      setState(() {
        _weatherModel = WeatherModel;
      });
    } catch (error) {
      print("Error from weather data : $error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Easy Weather",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(
                context,
                listen: false,
              ).toggleTheme(Theme.of(context).brightness != Brightness.dark);
            },
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
          ),
        ],
      ),
      body: _weatherModel != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DisplayWeather(weatherModel: _weatherModel!),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchWeatherPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(107, 255, 208, 128),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Search Weather",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator(color: Colors.blue)),
    );
  }
}
