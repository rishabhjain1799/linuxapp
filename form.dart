
import 'package:flutter/material.dart';

class Myform extends StatefulWidget {
  @override
  _MyformState createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:AppBar(
        title:Text('Registration Form'),
        backgroundColor: Colors.redAccent,
        ),
        body:
       Center(
         child: SingleChildScrollView(
          child: Container(
            width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>
              [
                TextField(
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Mobile No.',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Shop Name',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Shop Address',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'City',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Postal Code',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'GST Number',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Distributor ID',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 15
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged:(value){},
                  decoration: InputDecoration(
                    hintText: 'Verification Document No.',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                 ),
                ),
                SizedBox(
                  height: 30
                ),
                Material(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        child: MaterialButton(
                          minWidth:200,
                          height:40,
                          child:Text('Submit'), 
                          onPressed: ()
                          {

                          },
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