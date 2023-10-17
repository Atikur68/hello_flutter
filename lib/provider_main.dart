import 'package:flutter/material.dart';
import 'package:hello_futter/data_class_second.dart';
import 'package:provider/provider.dart';
import 'package:hello_futter/data_class.dart';

void main()=> runApp(ProviderMain());



class ProviderMain extends StatefulWidget {
  const ProviderMain({super.key});

  @override
  State<ProviderMain> createState() => _ProviderMainState();
}

class _ProviderMainState extends State<ProviderMain> {
  @override
  Widget build(BuildContext context) {

    final providerdata= Provider.of<ProviderDataClass>(context);
    final providerdata2= Provider.of<ProviderDataClassSecond>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(providerdata.value.toString()),
              Text(providerdata2.data.toString()),
              ElevatedButton(
                onPressed: (){
                  providerdata.Increment();
                }, child: Text('Increment'),
              ),
              ElevatedButton(
                onPressed: (){
                  providerdata2.Decrements();
                }, child: Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: (){
                  providerdata.Reset();
                }, child: Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
