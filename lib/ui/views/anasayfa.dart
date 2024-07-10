import 'package:bloc_pattern/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Pattern"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnaSayfaCubit, int>( //Dinleme yapısı
                builder: (context, sonuc){
                  return Text(sonuc.toString(), style: const TextStyle(fontSize: 50),);
                },
              ),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Sayı 1",),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Sayı 2"),
                keyboardType: TextInputType.number,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){ //Tetikleme
                    context.read<AnaSayfaCubit>().toplamaYap(tfSayi1.text, tfSayi2.text);
                  }, child: const Text("Topla")),
                  ElevatedButton(onPressed: (){ //Tetikleme
                    context.read<AnaSayfaCubit>().carpmaYap(tfSayi1.text, tfSayi2.text);
                  }, child: const Text("Çarp")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
