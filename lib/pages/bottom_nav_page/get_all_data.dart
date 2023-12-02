import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../methods/fatch_data.dart';

class ExampleOne extends StatelessWidget {
  ExampleOne({Key? key}) : super(key: key);

  final AllData getata = Get.put(AllData());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getata.getProductsApi (),
              builder: (context , snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                      itemCount: snapshot.data!.articles.length,
                      itemBuilder: (context, index){
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(snapshot.data!.articles[index].title.toString()),
                              subtitle: Text(snapshot.data!.articles[index].source.name.toString()),
                            ),
                          ],
                        );
                      });
                }else {
                  return Text('Loading');
                }
              },
            ),
            // child: FutureBuilder(
            //   future: getata.getPostApi(),
            //   builder: (context , snapshot){
            //     if(!snapshot.hasData){
            //       return Text('Loading');
            //     }else {
            //       return ListView.builder(
            //           itemCount: getata.postList.length,
            //           itemBuilder: (context, index){
            //             return Obx(() => Card(
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(getata.postList[index].username.toString()),
            //                     Text(getata.postList[index].email.toString()),
            //                     Text(getata.postList[index].address.city.toString()),
            //                     Text(getata.postList[index].address.geo.lat.toString()),
            //                   ],
            //                 ),
            //               ),
            //             ));
            //           });
            //     }
            //   },
            // ),
          )
        ],
      ),
    );
  }
}