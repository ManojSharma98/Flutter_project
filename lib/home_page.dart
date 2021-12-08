
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TabController tabController=TabController(length: 4, vsync: null,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           ListTile(leading: CircleAvatar(
             radius: 40,
             child: Image.asset('images/car_service.png'),

           ),
             title: Text('welcome back, Marvain'),
             subtitle: Text('Your finical situation is looking good.',maxLines: 1,),
             trailing: IconButton(
               icon: Icon(Icons.more_vert), onPressed: () {  },
             ),
           ),

           /* TabBar(tabs: [Text('Today'),Text('Monthly'),Text('Yearly'),Text('Future'),],indicatorColor: Colors.orange,),*/

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ListTile(leading: CircleAvatar(
                    child: Image.asset('images/car_service.png'),
                  ),
                    title: Text('small stuff add up! '),
                    tileColor: Colors.white,
                    trailing: Text('${DateTime.now().toString()}',style: TextStyle(color: Colors.white),),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
