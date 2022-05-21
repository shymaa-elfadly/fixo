import 'package:fixo/change-password/change-password.dart';
import 'package:flutter/material.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
                const Text('ادخل الكود المرسل على جوالك',style: TextStyle(color: Colors.white,fontSize: 18),),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 63.61,
                      //height: 48.5,
                      child: TextFormField(
                        initialValue: '0',
                        style: const TextStyle(color: Colors.white,),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration:  const InputDecoration(
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 63.61,
                      //height: 48.5,
                      child: TextFormField(
                        initialValue: '0',
                        style: const TextStyle(color: Colors.white,),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration:  const InputDecoration(
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 63.61,
                      //height: 48.5,
                      child: TextFormField(
                        initialValue: '0',
                        style: const TextStyle(color: Colors.white,),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration:  const InputDecoration(
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 63.61,
                      //height: 48.5,
                      child: TextFormField(
                        initialValue: '0',
                        style: const TextStyle(color: Colors.white,),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration:  const InputDecoration(
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text('00:45',style: TextStyle(color: Colors.white,fontSize: 18),),
                const SizedBox(height: 5,),
                const Text('اعادة ارسال الرمز',style: TextStyle(color: Color(0xffF3BA35),decoration: TextDecoration.underline,fontSize: 18,),),

                const SizedBox(height: 90,),
                SizedBox(
                  width: double.infinity,
                  height: 78,
                  child: OutlinedButton(
                    onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangePassword()));
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
