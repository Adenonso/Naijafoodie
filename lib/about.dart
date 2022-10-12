import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.amber.shade600,
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('About YouFit'),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30,)),
          SliverToBoxAdapter(
            child: Container(
              height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('Owner', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('Established By Adenonso Coorp. \n'
                  'With the vision and mission of providing health tips to human.',
                style: TextStyle(fontSize: 15),),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 60,)),
          SliverToBoxAdapter(
            child: Container(
              height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('License', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('1. In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  '2. iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  '3. yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  '4. pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  '5. iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  '6. Copyright 2022 ',
                style: TextStyle(fontSize: 15),),
            ),
          ),
        ],
      ),
    );
  }
}
