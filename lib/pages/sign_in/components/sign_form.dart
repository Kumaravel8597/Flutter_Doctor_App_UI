import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
  ]
    )
    );
  }



  Widget buildEmailFormField() {
    return Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              height: 80,
              // padding: EdgeInsets.only(left: 10,right: 10,top: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFF0037C5),Color(0xFF950074)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:  Color(0xFFC4C4C4)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/icons/dental-clinic 1.png",
                  fit: BoxFit.contain,
                  width: 45,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top:20,bottom: 30),
              // width: MediaQuery.of(context).size.width/2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Octopus Dental Center",
                      maxLines: 3,
                      style:const TextStyle(color: Colors.black,
                          fontFamily:'Quicksand', fontSize: 14,fontWeight:FontWeight.w600 )),
                  Text("Aurobindo Marg, New Delhi",
                      style:const TextStyle(color: Colors.black,
                          fontFamily:'Quicksand', fontSize: 12,fontWeight:FontWeight.w400)),
                  Container(
                    width: 100,
                    child: Image.asset(
                      "assets/icons/fiveStar.png",
                      fit: BoxFit.cover,
                      height: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 2,
              height: 120,
              color: Colors.grey[100],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient:LinearGradient(
                        colors: <Color>[Color(0xFFE97000),Color(0xFFB1008A)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )
                  ),
                  child:
                  Text("37",
                      style:const TextStyle(color: Colors.white,
                          fontFamily:'Quicksand', fontSize: 16,fontWeight: FontWeight.bold)),

                ),
                SizedBox(height: 5,),
                Text("4+ star rating",
                    style:const TextStyle(color: Colors.black,
                      fontFamily:'Quicksand', fontSize: 12,)),
              ],
            )
          ],
        )
    );

    //   TextFormField(
    //   keyboardType: TextInputType.emailAddress,
    //   onSaved: (newValue) => email = newValue,
    //   onChanged: (value) {
    //     if (value.isNotEmpty) {
    //       // removeError(error: kEmailNullError);
    //     // } else if (emailValidatorRegExp.hasMatch(value)) {
    //       // removeError(error: kInvalidEmailError);
    //     }
    //     return null;
    //   },
    //   validator: (value) {
    //     // if (value!.isEmpty) {
    //     //   addError(error: kEmailNullError);
    //     //   return "";
    //     // } else if (!emailValidatorRegExp.hasMatch(value)) {
    //     //   // addError(error: kInvalidEmailError);
    //     //   return "";
    //     // }
    //     return null;
    //   },
    //   decoration: InputDecoration(
    //     labelText: "Email",
    //     hintText: "Enter your email",
    //     // If  you are using latest version of flutter then lable text and hint text shown like this
    //     // if you r using flutter less then 1.20.* then maybe this is not working properly
    //     floatingLabelBehavior: FloatingLabelBehavior.always,
    //     // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
    //   ),
    // );
  }
}
