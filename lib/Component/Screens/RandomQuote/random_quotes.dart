import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/Component/Screens/RandomQuote/quotes_model.dart';
import 'package:quote_app_daily_task/Utils/quotes_list.dart';
QuoteModel? quoteModel;
class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  void initState(){
    quoteModel=QuoteModel.toList(quoteList);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quotes App'),
        backgroundColor: Colors.cyan.shade200,
      ),
      backgroundColor: Colors.cyan.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
           ...List.generate(quoteModel!.quoteModelList.length, (index) =>  Card(
             color: Colors.cyan.shade50,
          child: ListTile(
              title: Text(quoteModel!.quoteModelList[index].quote!,style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text(quoteModel!.quoteModelList[index].author!),
          ),

        ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () { Random random = Random();
        int x = random.nextInt(quoteModel!.quoteModelList.length);
        showDialog(context: context, builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: ListTile(
            title: Text(quoteModel!.quoteModelList[x].quote!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text(quoteModel!.quoteModelList[x].author!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancel')),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Ok'))
          ],
        ) );
        },child: Icon(Icons.format_quote_outlined),
      ),
    );
  }
}
