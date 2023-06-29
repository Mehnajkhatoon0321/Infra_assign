
import 'package:country_picker/country_picker.dart';
import 'package:date_format_field/date_format_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infraa/screen/Dashboard/Dashboard.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
enum Gender { male, female, other }
class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  Gender selectedGender = Gender.male;
  bool? checkid;
  List<String> countries = ['INDIA', 'US'];
  String? selectedCountry;
  String? selectedState;
  Map<String, List<String>> stateOptions = {
    'INDIA': ['Andaman and Nicobar Islands',
      'Andhra Pradesh',
      'Arunachal Pradesh',
      'Assam',
      'Bihar',
      'Chandigarh',
      'Chhattisgarh',
      'Dadra and Nagar Haveli',
      'Daman and Diu',
      'Delhi',
      'Goa',
      'Gujarat',
      'Haryana',
      'Himachal Pradesh',
      'Jammu and Kashmir',
      'Jharkhand',
      'Karnataka',
      'Kerala',
      'Lakshadweep Islands',
      'Madhya Pradesh',
      'Maharashtra',
      'Manipur',
      'Meghalaya',
      'Mizoram',
      'Nagaland',
      'Orissa',
      'Pondicherry',
      'Punjab',
      'Rajasthan',
      'Sikkim',
      'Tamil Nadu',
      'Telangana',
      'Tripura',
      'Uttar Pradesh',
      'Uttarakhand',
      'West Bengal'],
    'US': ['Alabama',
      'Alaska',
      'Arizona',
      'Arkansas',
      'California',
      'Colorado',
      'Connecticut',
      'Delaware',
      'Florida',
      'Georgia',
      'Hawaii',
      'Idaho',
      'Illinois',
      'Indiana',
      'Iowa',
      'Kansas',
      'Kentucky',
      'Louisiana',
      'Maine',
      'Maryland',
      'Massachusetts',
      'Michigan',
      'Minnesota',
      'Mississippi',
      'Missouri',
      'Montana',
      'Nebraska',
      'Nevada',
      'New Hampshire',
      'New Jersey',
      'New Mexico',
      'New York',
      'North Carolina',
      'North Dakota',
      'Ohio',
      'Oklahoma',
      'Oregon',
      'Pennsylvania',
      'Rhode Island',
      'South Carolina',
      'South Dakota',
      'Tennessee',
      'Texas',
      'Utah',
      'Vermont',
      'Virginia',
      'Washington',
      'West Virginia',
      'Wisconsin',
      'Wyoming'],
  };

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0,15, 0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: height * 0.08,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Register Here",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          fontFamily: "inter",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "First Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.only(top: 13, right: 6),
                  child: TextFormField(
                    controller: firstname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xffB9B9B9),
                      hintText: 'Enter First Name',hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your first name';
                      } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                        return 'Please enter a valid first name';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Last Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: TextFormField(
                    controller: lastname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xffB9B9B9),
                      hintText: 'Enter Last Name',
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your last name';
                      } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                        return 'Please enter a valid last name';
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(height: height * 0.01),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<Gender>(
                          value: Gender.male,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          },
                        ),
                        const Text('Male'),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<Gender>(
                          value: Gender.female,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          },
                        ),
                        const Text('Female'),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<Gender>(
                          value: Gender.other,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          },
                        ),
                        const Text('Other'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xffB9B9B9), hintStyle: TextStyle(fontSize: 14),
                      hintText: 'Enter Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(
                          r'^[\w-]+(\.[\w-]+)*@[a-z\d-]+(\.[a-z\d-]+)*(\.[a-z]{2,})$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xffB9B9B9),
                      hintText: 'Enter Password', hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      } else if (!RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                          .hasMatch(value)) {
                        return 'Password must contain at least one uppercase letter, one lowercase letter, and one digit';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: height * 0.01),

                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xffB9B9B9),
                      hintText: 'Phone Number', hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }

                      final phoneRegex = RegExp(r'^[0-9]{10}$');
                      if (!phoneRegex.hasMatch(value)) {
                        return 'Please enter a valid 10-digit phone number';
                      }
                      return null;
                    },inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly, // Only allow digits
                    LengthLimitingTextInputFormatter(10), // Limit input to 10 characters
                  ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Country",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                        value: selectedCountry,
                        items: countries.map((country) {
                          return DropdownMenuItem(
                            value: country,
                            child: Text(country),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountry = value!;
                            selectedState = null;
                          });
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Please select a country';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Country', hintStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.public), // Prefix icon for the country dropdown
                        ),
                      ),
                      SizedBox(height: 20.0),
                      if (selectedCountry == 'INDIA')
                        DropdownButtonFormField(
                          value: selectedState,
                          items: stateOptions['INDIA']?.map((state) {
                            return DropdownMenuItem(
                              value: state,
                              child: Text(state),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedState = value!;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Please select a state';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'State', hintStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Icon(Icons.location_city), // Prefix icon for the state dropdown (if country is 'INDIA')
                          ),
                        ),
                      SizedBox(height: 20.0),
                      if (selectedCountry == 'US')
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DropdownButtonFormField(
                            value: selectedState,
                            items: stateOptions['US']?.map((state) {
                              return DropdownMenuItem(
                                value: state,
                                child: Text(state),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedState = value!;
                              });
                            },
                            validator: (value) {
                              if (value == null) {
                                return 'Please select a state';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'State',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.location_city), // Prefix icon for the state dropdown (if country is 'US')
                            ),
                          ),
                        ),




                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform further actions here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Dashboard(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "inter",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
