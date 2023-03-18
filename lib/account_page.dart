import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({Key? key}) : super(key: key);

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  late final pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.grey[700],
      body:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      child: Column(
                        children: [
                          ListTile(
                              title: Text("Turf Details",style: GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white54,
                                radius: 50,
                                child: InkWell(
                                onTap: (){
                                },
                                  child: Icon(Icons.add,color: Colors.black,)),
                              ),
                            ),
                            title: SizedBox(
                              width: 20,
                              height: 45,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Turf Name",
                                  hintStyle: GoogleFonts.lato(color: Colors.white24),
                                  border: OutlineInputBorder(),
                                  counterStyle: GoogleFonts.lato(),
                                ),
                              ),
                            ),

                          ),
                            ListTile(
                              leading: Text("Add turf Image ",style: GoogleFonts.lato(color: Colors.white),),
                              title:
                                 SizedBox(
                                  width: 10,
                                  height: 40,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enable location",
                                        hintStyle: GoogleFonts.lato(color: Colors.white24),
                                        suffixIcon: Icon(Icons.location_on_rounded),
                                        border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                              ),

                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
                              child: Container(
                                width: 120,
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child: Card(
                                    color: Colors.grey[600],
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("Add Images",style: GoogleFonts.lato(color: Colors.white24),),
                                          Icon(Icons.image),
                                        ],
                                      ),
                                    ) ,

                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 200,
                              child: PageView.builder(
                                controller: pageController,
                                itemBuilder: ( _,index){
                                  return AnimatedBuilder(animation: pageController, builder: (ctx,child){
                                    return child!;
                                  },
                                    child:InkWell(
                                      onTap: (){

                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(24),
                                        height: 200,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey[600]
                                        ),

                                      ),
                                    ),
                                  );
                                },
                                itemCount: 5,
                              )
                          ),
                        ListTile(
                         leading: Text("Add Available Sports",style: GoogleFonts.lato(color:Colors.white),),
                      ),
                          SizedBox(
                              height: 60,
                              child: PageView.builder(
                                controller: pageController,
                                itemBuilder: ( _,index){
                                  return AnimatedBuilder(animation: pageController, builder: (ctx,child){
                                    return child!;
                                  },
                                   child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 5),
                                     child: Row(
                                       children: [
                                         Column(
                                           children: [
                                             const Padding(
                                               padding: EdgeInsets.symmetric(horizontal: 0),
                                               child: Image(image: AssetImage("assets/images/cricket_logo.png"),
                                                  height: 50,
                                                 width: 30,
                                               ),
                                             ),
                                             InkWell(
                                               onTap: (){

                                               },
                                                 child: Text("Cricket",style: GoogleFonts.lato(color: Colors.white,fontSize: 8,fontWeight: FontWeight.bold),)),
                                           ],
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.symmetric(horizontal: 45),
                                           child: Column(
                                             children: [
                                              const Image(image: AssetImage("assets/images/basketball_logo.png"),
                                                 height: 50,
                                                 width: 40,
                                               ),
                                               InkWell(
                                                 onTap:(){

                                                },
                                               child: Text("Basket Ball",style: GoogleFonts.lato(color: Colors.white,fontSize: 8,fontWeight: FontWeight.bold),)),

                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.symmetric(horizontal: 5),
                                           child: Column(
                                             children: [
                                              const Image(image: AssetImage("assets/images/badminton_logo.png"),
                                                 height: 50,
                                                 width: 40,
                                               ),
                                               InkWell(
                                                onTap: (){

                                                },
                                                   child: Text("Badminton",style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,color: Colors.white),))
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.symmetric(horizontal: 45),
                                           child: Column(
                                             children: [
                                               const Image(image: AssetImage("assets/images/football_logo.png"),
                                                 height: 50,
                                                 width: 40,
                                               ),
                                               InkWell(
                                                 onTap: (){

                                                 },
                                               child: Text("Football",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 8,color: Colors.white ),))
                                             ],
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),




                                  );
                                },
                                itemCount: 5,
                              )
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                                    title: Text("User Details",style: GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                          ),


                          ListTile(
                            leading: const Padding(
                              padding: EdgeInsets.symmetric(horizontal:0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white54,
                                radius: 50,
                              ),
                            ),
                            title: SizedBox(
                              width: 20,
                              height: 45,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Owner Name",
                                  hintStyle: GoogleFonts.lato(color: Colors.white24),
                                  border: OutlineInputBorder(),
                                  counterStyle: GoogleFonts.lato(),
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
