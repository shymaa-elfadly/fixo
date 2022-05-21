import 'package:fixo/forget-password-screen/forget_password.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor:  const Color(0xFF182061),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                      width: 153.83,
                      height: 136.43,
                      // decoration: BoxDecoration(gradient: LinearGradient()),
                      child: Image.asset('assets/images/splash.png')),
                  const SizedBox(height: 50,),
                  SizedBox(
                    width: 328.63,
                    height: 48.5,
                    child: TextFormField(
                      style: const TextStyle(color: Color(0xffF3BA35)),
                      keyboardType: TextInputType.number,
                      decoration:  const InputDecoration(
                        enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                        labelText: 'رقم الجوال *',
                        labelStyle: TextStyle(color: Colors.white, ),


                      ),

                    ),
                  ),
                   const SizedBox(height: 20,),
                  SizedBox(
                    width: 328.63,
                    height: 48.5,
                    child: TextFormField(
                      style: const TextStyle(color: Color(0xffF3BA35)),
                      obscureText: obscureText,
                      decoration:  const InputDecoration(
                        enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                        labelText: 'كلمة المرور *',
                        labelStyle: TextStyle(color: Colors.white, ),
                        // suffixIcon:IconButton(icon: Icon(Icons.visibility),
                        //   onPressed: (){
                        //   setState(() {
                        //     obscureText = !obscureText;
                        //   });
                        //   },),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(
                          shape: const CircleBorder(),
                          fillColor: MaterialStateProperty.all(const Color(0xffF3BA35)),
                          checkColor: const Color(0xFF182061),
                          value: isChecked, onChanged: (bool? value){
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                      const Text('تذكرني',style: TextStyle(color:Color(0xffF3BA35)),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: 329,
                    height: 56,
                    child: OutlinedButton(
                      onPressed: (){
                      },
                      child: const Text('تسجيل الدخول',),
                      style: OutlinedButton.styleFrom(
                        primary: const Color(0xff34418a),
                        backgroundColor: const Color(0xffF3BA35),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPasswordScreen()));
                    },
                      child: const Text('نسيت كلمة المرور؟',style: TextStyle(color: Colors.white),)),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                     Text('هل ترغب في المساعدة؟',style: TextStyle(color: Colors.white),),
                    Text(' طلب مساعدة',style: TextStyle(color: Color(0xffF3BA35),),),
                  ],),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                      Text('لا أمتلك حساب؟',style: TextStyle(color: Colors.white),),
                      Text(' تسجيل جديد',style: TextStyle(color: Color(0xffF3BA35),),),
                    ],)



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
