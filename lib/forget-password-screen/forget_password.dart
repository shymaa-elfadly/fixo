import 'package:fixo/otp-screen/otp.dart';
import 'package:flutter/material.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFF182061),
        appBar: AppBar(
          backgroundColor:const Color(0xFF182061) ,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: Text('نسيت كلمة المرور'),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(children: [
                SizedBox(
                    width: 153.83,
                    height: 136.43,
                    // decoration: BoxDecoration(gradient: LinearGradient()),
                    child: Image.asset('assets/images/splash.png')),
                const SizedBox(height: 60,),
                const Text('ادخل رقم جوالك لارسال الكود',style: TextStyle(color: Colors.white,fontSize: 18),),
                const SizedBox(height: 30,),
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
                const SizedBox(height: 160,),
                SizedBox(
                  width: double.infinity,
                  height: 78,
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpScreen()));
                    },
                    child: const Text('متابعة',style: TextStyle(fontSize: 25),),
                    style: OutlinedButton.styleFrom(
                      primary: const Color(0xff34418a),
                      backgroundColor: const Color(0xffF3BA35),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                ),
            ],),
            ),
          ),
        ),
      ),
    );
  }
}
