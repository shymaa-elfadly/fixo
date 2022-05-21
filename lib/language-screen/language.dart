import 'package:fixo/login-screen/login.dart';
import 'package:flutter/material.dart';
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF182061),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 153.83,
                  height: 136.43,
                  // decoration: BoxDecoration(gradient: LinearGradient()),
                  child: Image.asset('assets/images/splash.png')),
              const SizedBox(height: 250,),
              const Text('يرجي تحديد اللغة',style: TextStyle(color: Colors.white)),
              const SizedBox(height: 5,),
              const Text('Please Select The Language',style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20,),
              SizedBox(
                width: 312,
                height: 46,
                child: OutlinedButton(
                  onPressed: (){
                    setState(() {
                      _hasBeenPressed = !_hasBeenPressed;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                  child: const Text('العربية',),
                  style: OutlinedButton.styleFrom(
                    //primary: Colors.white,
                    primary: _hasBeenPressed ? const Color(0xff34418a) : Colors.white ,
                    backgroundColor: _hasBeenPressed ? Colors.white : const Color(0xff34418a),
                    //backgroundColor: const Color(0xff34418a),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: 312,
                height: 46,
                child: OutlinedButton(
                  onPressed: (){
                    setState(() {
                      _hasBeenPressed2=!_hasBeenPressed2;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                  child: const Text('ENGLISH',),
                  style: OutlinedButton.styleFrom(
                    primary: _hasBeenPressed2 ? const Color(0xff34418a) : Colors.white ,
                    backgroundColor: _hasBeenPressed2 ? Colors.white : const Color(0xff34418a),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
