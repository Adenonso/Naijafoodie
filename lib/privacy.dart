import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {

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
            title: const Text('Privacy And User Agreement'),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30,)),
          SliverToBoxAdapter(
            child: Container(
              height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('Privacy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt ',
                style: TextStyle(fontSize: 15),),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 60,)),
          SliverToBoxAdapter(
            child: Container(
              height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('User Agreement', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // height: 50.0,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt In YouFit iuid er sfd sd ds uisyd suyu sgvytv sd \n'
                  'iuiiuni iuvivus siusiiuf ivis in etr ere in yufy \n'
                  'yiu rt eret wwew wde frt yhg f dec ser fr sr \n'
                  'pol i d rert sew te gfrty fgr rtry sssasa aea qsr gfrgrt ',
                style: TextStyle(fontSize: 15),),
            ),
          ),
        ],
      ),
    );
  }
}
