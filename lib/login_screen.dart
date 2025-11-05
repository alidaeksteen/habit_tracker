import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'register_screen.dart';
import 'habit_tracker_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // Default credentials
  final String defaultUsername = 'testuser';
  final String defaultPassword = 'password123';

  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();

    // Initialize video from local asset
    _videoController = VideoPlayerController.asset('assets/videos/background.mp4')
      ..initialize().then((_) {
        _videoController.setLooping(true);
        _videoController.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Show toast messages
  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Login logic
  void _login() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      _showToast('Please fill in all fields');
      return;
    }

    if (username == defaultUsername && password == defaultPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HabitTrackerScreen(username: username),
        ),
      );
    } else {
      _showToast('Invalid username or password');
    }
  }

  // Reusable input field widget
  Widget _buildInputField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.blue.shade700),
          hintText: hint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevents resizing when keyboard opens
      body: Stack(
        children: [
          // Full-width video background with vertical cropping
      Positioned.fill(
  child: _videoController.value.isInitialized
      ? ClipRect(
          child: SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              alignment: Alignment.center,
              child: SizedBox(
                width: _videoController.value.size.width,
                height: _videoController.value.size.height,
                child: VideoPlayer(_videoController),
              ),
            ),
          ),
        )
      : Container(color: Colors.black),
),

          // Semi-transparent overlay
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.4)),
          ),

          // Login form
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Habitt',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),

                  _buildInputField(
                    controller: _usernameController,
                    hint: 'Enter Username',
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 20),

                  _buildInputField(
                    controller: _passwordController,
                    hint: 'Enter Password',
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Text('or', style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 10),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

