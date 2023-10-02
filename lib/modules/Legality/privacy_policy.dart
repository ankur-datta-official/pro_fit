import 'package:flutter/material.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/dashboard.dart';
import 'package:pro_fit/navigation.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: Icon(Icons.arrow_circle_left_outlined,
              color: Colors.white, size: 34,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xFF1c1c1e),
          title: Center(
            child: Text("LEGAL & PRIVACY INFO.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text("Legal Disclaimer:",style: TextStyle(
                  color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("Welcome to ProFit. By using this App, you agree to comply with and be bound by the following terms and conditions of use. Please review the following carefully. If you do not agree to these terms, you should not use this App.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),
              ),
              SizedBox(height: 15,),

              Text("Terms and Conditions:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("1. Acceptance of Terms: By accessing and using this App, you acknowledge that you have read, understood, and agree to be bound by these terms and conditions. These terms may be updated from time to time, and your continued use of the App after such changes are made will constitute your acceptance of the revised terms.",
              style: TextStyle(
                color: Color(0xFFb5b5b5),
              ),),
              SizedBox(height: 15,),
              Text("2. Use of the App: This App is intended for informational and fitness tracking purposes only. It does not provide medical advice, diagnosis, or treatment. Always consult with a qualified healthcare professional before beginning any new fitness or exercise program.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("3. User Accounts: If you create an account on this App, you are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account or any other breach of security.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("4. Privacy Policy: Your use of this App is also governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information. Please review the Privacy Policy separately.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),

              Text("Privacy Policy:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("Your privacy is important to us. This Privacy Policy outlines how we collects, uses, and protects your personal information when you use our App.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),

              Text("Information We Collect:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("- Personal Information: We may collect personal information such as your name, email address, and demographic information when you create an account or use certain features of the App.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("- Fitness Data: The App may collect data related to your fitness activities, such as workout history, nutrition tracking, and progress data. This information is used to provide you with personalized fitness recommendations and insights.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("- Usage Information: We may collect information about how you use the App, including your interactions, preferences, and device information.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),

              Text("How We Use Your Information:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("- Personalization: We use your information to personalize your experience and provide you with tailored fitness recommendations and content.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("- Communication: We may use your email address to send you important updates, notifications, and promotional offers related to the App. You can opt out of promotional emails at any time.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("- Analytics: We use data analytics to improve the functionality and performance of the App.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),

              Text("Data Security:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("We take data security seriously and implement industry-standard measures to protect your information from unauthorized access, disclosure, alteration, or destruction.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),

              Text("Your Choices:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("You have the right to access, update, or delete your personal information at any time. You can also manage your communication preferences by adjusting your account settings.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),

              Text("Contact Us:",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 15,),
              Text("If you have any questions or concerns about our Privacy Policy or how we handle your data, please contact us at “contact@profit.com”.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("By using our App, you consent to the practices described in this Privacy Policy.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
              Text("Please read this Legal and Privacy Information carefully, and if you have any questions or concerns, don't hesitate to contact us. Your use of the App is subject to these terms and conditions, and your privacy is important to us.",
                style: TextStyle(
                  color: Color(0xFFb5b5b5),
                ),),
              SizedBox(height: 15,),
            ],
          ),
        ),
    );
  }
}
