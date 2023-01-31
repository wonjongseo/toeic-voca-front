import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/repository/word_api_datasource.dart';


const  String EXAMPLE_PATH = '/example';
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {

  
  String examples = '';
  String examplesMean = '';
  var args = Get.arguments;
  late WordApiDatasource wordApiDatasource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wordApiDatasource =  WordApiDatasource();
 }


  @override
  Widget build(BuildContext context) {
   
    print(args);
    String voca ='';
    if(args['voca'] != null){
       voca = args['voca'];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(voca),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(voca),
              ElevatedButton(onPressed: () async {
                 String tmp = await  wordApiDatasource.getWordExample(voca);
                 setState(() {
                   examples = tmp;
                 });

              }, child: Row(
                children:const [
                   Text('Show Example'),
                   Icon(Icons.search),
                ],
              )),

              if(examples != '')
              Text(examples),

              if(examples != '')
              ElevatedButton(onPressed: ()  async{
                String tmp = await  wordApiDatasource.getWordMean(examples);
                setState(() {
                  examplesMean = tmp;
                });
              }, child: Row(
                children:const [
                   Text('Show '),
                  Icon(Icons.search),
                ],
              )),
              if(examplesMean !='') 
              Text(examplesMean)

            ],
          ),
        ),
    
      ),
    );
  }
}