import 'package:flutter/material.dart';
import 'package:flutterworkspace/models/workspace_model.dart';
import 'package:flutterworkspace/shared/components/components.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var workSpaceController = TextEditingController();

  List<WorkSpaceModel> workspaces = [
    WorkSpaceModel(
      id:1,
      name:'Ideaspace Workspace',
      image: 'assets/images/ideaspace.jpg',
      location: 'ElNozha,Cairo',
    ),
    WorkSpaceModel(
      id:2,
      name:'Elkhaima Workspace',
      image: 'assets/images/elkhaima.jpg',
      location: 'Dokki,Giza',
    ),
    WorkSpaceModel(
      id:3,
      name:'Zeus Workspace',
      image: 'assets/images/zeus.jpg',
      location: 'Dokki,Giza',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 1.0,
      //   // leading: IconButton(
      //   //     onPressed: (){},
      //   //     iconSize: 35.0,
      //   //     icon: Icon(
      //   //       Icons.menu_outlined,
      //   //       color: Colors.black,
      //   //     )),
      //   // title: Image(
      //   //   image: AssetImage('assets/images/logo.png'),
      //   //   fit: BoxFit.contain,
      //   //   height: 75,
      //   //   width: 300,
      //   //
      //   // ),
      //   // actions: [
      //   //   IconButton(
      //   //     iconSize: 35.0,
      //   //     padding: EdgeInsets.only(right: 10.0),
      //   //     onPressed:(){},
      //   //     icon: Icon(
      //   //         Icons.account_circle_outlined,
      //   //       color: Colors.black,
      //   //     ),
      //   //   ),
      //   // ],
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0,top: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                        onPressed: (){},
                        iconSize: 30.0,
                        icon: Icon(
                          Icons.menu_sharp,
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    width: 270.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      iconSize: 30.0,
                      onPressed:(){},
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Hello Hesham!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:20.0,
              ),
              Text(
                'Let\'s find you a workspace today!' ,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Container(
                height:60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), //border corner radius
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.07), //color of shadow
                      spreadRadius: 12, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first parameter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    border: InputBorder.none,
                    hintText:'Search WorkSpace',
                    hintStyle: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 20.0,
                    ),
                    prefix: Icon(Icons.search,color: Colors.grey[300], size: 25.0,),
                    suffix: Icon(Icons.location_on,color: Colors.lightBlue,size: 25.0,),
                  ),
                ),

              ),
              SizedBox(
                height:40.0,
              ),
              Text(
                'Recommended Workspaces',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Container(
                height: 260.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildWorkspaceItem(workspaces[index]),
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Text(
                'Popular Workspaces',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Container(
                height: 260.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildWorkspaceItem(workspaces[index]),
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Text(
                'Newest Workspaces',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Container(
                height: 260.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildWorkspaceItem(workspaces[index]),
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              Text(
                'Latest Reviews',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image:DecorationImage(
                        image: AssetImage('assets/images/ideaspace.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          height: 42,
                          width: 110.0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "20LE/hour",
                              style: TextStyle(
                                fontSize: 20.0,
                                color:Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height:10.0,
                  ),
                  Text(
                    'Ideaspace Workspace',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(
                    height:10.0,
                  ),
                  Text(
                    'ElNozha,Cairo',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(
                    height:20.0,
                  ),
                  Text(
                    'We Couldn\'t have found a more perfect place to stay '
                        'in the ares - it\'s just perfect! The attention to detail not '
                        'just in our room but the whole property is outstanding.',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(
                    height:20.0,
                  ),
                  defaultButton(
                    function: ()
                    {
                      print('more reviews.');
                    },
                    text: 'More Reviews',
                  ),
                ],
              ),
              SizedBox(
                height:70.0,
              ),
              Text(
                'Continue?',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:40.0,
              ),
              defaultButton(
                function: ()
                {
                  print('create account');
                },
                text: 'Create Account',
              ),
              SizedBox(
                height:25.0,
              ),
              Text(
                'By registering an account, you aree to Co-Workingspace '
                    'Terms of Use and Privacy Policy',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height:250.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultButton(
                    function: ()
                    {
                      print('login');
                    },
                    text: 'Login',
                  ),

                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildWorkspaceItem(WorkSpaceModel workspace) => Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 210,
            height: 190,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('${workspace.image}'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  height: 42,
                  width: 110.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "20LE/hour",
                      style: TextStyle(
                        fontSize: 20.0,
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height:10.0,
          ),
          Text(
            '${workspace.name}',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            height:10.0,
          ),
          Text(
            '${workspace.location}',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
      // SizedBox(
      //   width:20,
      // ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(40.0),
      //         ),
      //         child: Image(
      //           image: AssetImage('assets/images/elkhaima.jpg'),
      //           height: 140.0,
      //           width: 210.0,
      //         )
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'ElKhaima Workspace',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[700],
      //       ),
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'Dokki,Gize',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[500],
      //       ),
      //     ),
      //   ],
      // ),
      // SizedBox(
      //   width:20,
      // ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(40.0),
      //         ),
      //         child: Image(
      //           image: AssetImage('assets/images/zeus.jpg'),
      //           height: 140.0,
      //           width: 245.0,
      //         )
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'Zeus Workspace',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[700],
      //       ),
      //     ),
      //     SizedBox(
      //       height:10.0,
      //     ),
      //     Text(
      //       'Dokki,Giza',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         color: Colors.grey[500],
      //       ),
      //     ),
      //   ],
      // ),
    ],
  );
}
