import "package:flutter/material.dart";
import "package:task_7/colors.dart";


class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: const Color.fromARGB(255, 160, 113, 95),
                      ),
                      onPressed: (){
                        setState(() {
                          counter++;
                        });
                      },
                      icon: const Icon(Icons.add)),
                      const SizedBox(width: 5,),
                      Text(
                        counter.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      const SizedBox(width: 5,),
                      IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 160, 113, 95),
                        foregroundColor: AppColors.primary,
                      ),
                      onPressed: (){
                        setState(() {
                          counter--;
                        });
                      },
                      icon: const Icon(Icons.remove,
                      color: Colors.white,)),
                  ],
                );
  }
}