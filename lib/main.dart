import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

// welcome page
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Image at the top
          Image.asset(
            'welcome.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Spacer(),
          // One-line sentence
          Text(
            'Finding strength in every step of the journey.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10), // Optional spacing
          // Button at the bottom
          FilledButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade900,
              elevation: 10,
            ),
            onPressed: () {
              print('Button Pressed');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoachPage(),
                ),
              );
            },
            child: Text('Start Your Journey'),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class CoachPage extends StatefulWidget {
  @override
  _CoachPageState createState() => _CoachPageState();
}

class _CoachPageState extends State<CoachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coach'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Motivational Text
            Text(
              'Finding strength in every step of the journey',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Heading
            Text(
              'Meet your Coach',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Start your journey text
            Text(
              'Start your Journey',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            // Next Button
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                elevation: 10,
              ),
              onPressed: () {
                print('Next Button Pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingUpProfilePage(),
                  ),
                );
              },
              child: Text('Next'),
            ),
            Spacer(),
            // Oval shaped top image
            ClipOval(
              child: Image.asset(
                'coach.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
      ),
    );
  }
}

// welcome page
class SettingUpProfilePage extends StatefulWidget {
  @override
  _SettingUpProfilePageState createState() => _SettingUpProfilePageState();
}

class _SettingUpProfilePageState extends State<SettingUpProfilePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Workout Plan'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Top Image
            Image.asset(
              'stay-fit-1.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Text in the middle
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Create a workout plan',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10), // Optional spacing between lines
                  Text(
                    'to stay fit',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20), // Spacing before button
                  FilledButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('Start Now Button Pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GenderSelectionPage(),
                        ),
                      );
                    },
                    child: Text('Start Now'),
                  ),
                ],
              ),
            ),
            // Bottom Image
            Image.asset(
              'stay-fit-2.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      );
    }
  }



// Sign In Page
class GenderSelectionPage extends StatefulWidget {
  @override
  _GenderSelectionPageState createState() => _GenderSelectionPageState();
}

class _GenderSelectionPageState extends State<GenderSelectionPage> {
  String? selectedGender; // Holds the selected gender (female or male)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tell us about Yourself!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Heading
            Text(
              'Tell us about Yourself!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // Description
            Text(
              'To give you a better experience, do you want a female or male instructor?',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Female Image Button
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = 'Female';
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedGender == 'Female'
                                ? Colors.blue
                                : Colors.transparent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'female.png',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Female'),
                    ],
                  ),
                ),
                SizedBox(width: 20), // Spacing between buttons
                // Male Image Button
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = 'Male';
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedGender == 'Male'
                                ? Colors.blue
                                : Colors.transparent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'male.png',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Male'),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            // Next Button
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                elevation: 10,
              ),
              onPressed: selectedGender != null
                  ? () {
                print('Selected Gender: $selectedGender');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalDetailsPage(),
                  ),
                );
              }
                  : null, // Button is disabled if no gender is selected
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}


class PersonalDetailsPage extends StatefulWidget {
  @override
  _PersonalDetailsPageState createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  // Controllers for text fields
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  // Selected units for weight and height
  String selectedWeightUnit = 'kg';
  String selectedHeightUnit = 'cm';

  // Error messages for validation
  String? ageError;
  String? weightError;
  String? heightError;

  // Function to validate input
  bool validateInput() {
    setState(() {
      ageError = null;
      weightError = null;
      heightError = null;
    });

    bool isValid = true;

    // Age validation: must be a positive integer
    if (ageController.text.isEmpty || int.tryParse(ageController.text) == null || int.parse(ageController.text) <= 0) {
      setState(() {
        ageError = 'Please enter a valid positive age';
      });
      isValid = false;
    }

    // Weight validation: must be a positive number with up to 2 decimal places
    if (weightController.text.isEmpty || !RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(weightController.text) || double.parse(weightController.text) <= 0) {
      setState(() {
        weightError = 'Enter a valid weight (positive, up to 2 decimal places)';
      });
      isValid = false;
    }

    // Height validation: must be a positive number with up to 2 decimal places
    if (heightController.text.isEmpty || !RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(heightController.text) || double.parse(heightController.text) <= 0) {
      setState(() {
        heightError = 'Enter a valid height (positive, up to 2 decimal places)';
      });
      isValid = false;
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Heading
            Text(
              'Personal Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Age box
            Text('How old are you?'),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your age',
                errorText: ageError,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'It helps to train your body according to your age',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 20),
            // Weight box with unit selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'What’s your weight?',
                      errorText: weightError,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                DropdownButton<String>(
                  value: selectedWeightUnit,
                  items: <String>['kg', 'pound'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedWeightUnit = newValue!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            // Height box with unit selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'What’s your height?',
                      errorText: heightError,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                DropdownButton<String>(
                  value: selectedHeightUnit,
                  items: <String>['cm', 'inch'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedHeightUnit = newValue!;
                    });
                  },
                ),
              ],
            ),
            Spacer(),
            // Next button
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                elevation: 10,
              ),
              onPressed: () {
                if (validateInput()) {
                  print('Age: ${ageController.text}, '
                      'Weight: ${weightController.text} $selectedWeightUnit, '
                      'Height: ${heightController.text} $selectedHeightUnit');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FitnessGoalPage(),
                    ),
                  );
                }
              },
              child: Center(
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class FitnessGoalPage extends StatefulWidget {
  @override
  _FitnessGoalPageState createState() => _FitnessGoalPageState();
}

class _FitnessGoalPageState extends State<FitnessGoalPage> {
  // List of fitness goals
  final List<String> goals = [
    'Gain Weight',
    'Lose Weight',
    'Get Fitter',
    'Gain more flexible',
    'Learn the basic'
  ];

  // Track the selected goal
  String selectedGoal = 'Gain Weight';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Goal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Image at the top
            Image.asset(
              'fitness-goal.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Heading
            Text(
              'What’s your Goal?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Options (Goals)
            Expanded(
              child: ListView.builder(
                itemCount: goals.length,
                itemBuilder: (context, index) {
                  // Determine the color based on position
                  Color textColor = Colors.black;
                  if (index < goals.indexOf(selectedGoal)) {
                    textColor = Colors.grey; // Greyish color for upper ones
                  }

                  // Determine text size and weight based on selection
                  bool isSelected = goals[index] == selectedGoal;
                  double textSize = isSelected ? 24 : 18;
                  FontWeight textWeight = isSelected ? FontWeight.bold : FontWeight.normal;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGoal = goals[index];
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: AnimatedDefaultTextStyle(
                        duration: Duration(milliseconds: 200),
                        style: TextStyle(
                          color: textColor,
                          fontSize: textSize,
                          fontWeight: textWeight,
                        ),
                        child: Center(child: Text(goals[index])),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Next Button
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                elevation: 10,
              ),
              onPressed: () {
                print('Selected Goal: $selectedGoal');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

// Sign In Page
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                elevation: 10,
              ),
              onPressed: () {
                setState(() {
                  _email = _emailController.text;
                  _password = _passwordController.text;
                });

                if (_email.isNotEmpty && _password.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter your credentials')),
                  );
                }
              },
              child: Text('Sign In'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

// Sign Up Page
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                elevation: 10,
              ),
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;

                if (email.isNotEmpty && password.isNotEmpty) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Account created successfully! Please sign in.')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please fill in all fields')),
                  );
                }
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}



class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // Placeholder for username and profile image
    final String username = 'John Doe'; // Replace with actual username

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Row(
                  children: [
                    Text(
                      'Hello, $username',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    ClipOval(
                      child: Image.asset(
                        'male.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FitnessGoalPage()),
                );
              },
              child: Text('Current Goal: Fitter'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today\'s Workout Plan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 10),

            GestureDetector(
              onTap: () {
              },
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    'male.png',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Day 01 - Warm Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Heading: Workout Categories and See All Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Workout Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorkoutsPage()),
                    );
                  },
                  child: Text('See All'),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Image with Button: Hard Workouts
            GestureDetector(
              onTap: () {
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'male.png',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkoutsPage()),
                      );
                    },
                    child: Text('Hard Workouts'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Image with Button: Learn the Basics
            GestureDetector(
              onTap: () {
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'male.png',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkoutsPage()),
                      );
                    },
                    child: Text('Learn the Basics'),
                  ),
                ],
              ),
            ),
            // Button: Current Goal
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AIRecommendationPage()),
                );
              },
              child: Text('AI Recommendations'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      ),
    );
  }
}


class WorkoutsPage extends StatefulWidget {
  @override
  _WorkoutsPageState createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
      ),
      title: Text('Day 01 - Warm Up'),
      actions: [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Image at the top
          Image.asset(
            'workout.png',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),

          // Heading: Day 01 - Warm Up
          Text(
            'Day 01 - Warm Up',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          Text(
            'Warming up promotes the flow of synovial fluid around joints, '
                'which can improve lubrication and freedom of movement.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),

          // Buttons: 60 min and 350 cal
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                },
                child: Text('60 min'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50), // Button size
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                },
                child: Text('350 cal'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50), // Button size
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Card with image and text for Simple Warm-Up Exercises
          Card(
            child: Row(
              children: <Widget>[
                // Left side image
                Image.asset(
                  'workout-card.png',
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),

                // Right side content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Simple Warm-Up Exercises',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '30 min',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),

          // Start Workout Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkOutDetailsPage()),
              );
            },
            child: Text('Start Workout'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50), // Full width button
            ),
          ),
        ],
      ),
    ),
  );
}
}

class WorkOutDetailsPage extends StatefulWidget {
  @override
  _WorkOutDetailsPageState createState() => _WorkOutDetailsPageState();
}

class _WorkOutDetailsPageState extends State<WorkOutDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WorkoutsPage()),
            );
          },
        ),
        title: Text('Day 01 - Warm Up'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Day 01 - Warm Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Text(
              'Warming up promotes the flow of synovial fluid around joints, '
                  'which can improve lubrication and freedom of movement.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Button: 350 cal
            ElevatedButton(
              onPressed: () {
              },
              child: Text('350 cal'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50), // Button size
              ),
            ),
            SizedBox(height: 20),

            // Image in the middle
            Image.asset(
              'workout-details.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),

            // Start Workout Button
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Start Workout'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AIRecommendationPage extends StatefulWidget {
  @override
  _AIRecommendationPageState createState() => _AIRecommendationPageState();
}

class _AIRecommendationPageState extends State<AIRecommendationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WorkOutDetailsPage()),
            );
          },
        ),
        title: Text('AI Recommendation'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Heading: AI Recommendation
            Text(
              'AI Recommendation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activity',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text('View All'),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Card with Image and Activity Information
            GestureDetector(
              onTap: () {
                // Navigate to the workout page here
                print('Navigating to workout page...');
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      // Left side image
                      Image.asset(
                        'jump-rope.png',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),

                      // Center content: Heading, Time, and Calories
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Jump Rope',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '⌛ Total Time: 29 min',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '🔥 Total Calories: 310 kcal',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      // Right arrow icon
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}