import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:task_7/colors.dart";
import "package:task_7/widgets/counter.dart";
import "package:task_7/widgets/custom_icon.dart";

class OfferTask extends StatelessWidget {
  const OfferTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
       appBar: AppBar(
           backgroundColor: AppColors.bar,
           leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255, 160, 113, 95),
            ),
            ),
       ),
       body:   Padding(
        padding: const EdgeInsets.all(18),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Center(
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('assets/offer.png',
                  width: double.infinity,
                  fit: BoxFit.cover,),
                 ),
               ),
             const SizedBox(height: 15,),
            const Text('Yomnista Combo',
             style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 160, 113, 95),
             ),
             ),
             const SizedBox(height: 6,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star,
                    color: Color.fromARGB(255, 160, 113, 95),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('4(3)',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ],
                ),
                 Container(
                  decoration:  BoxDecoration(
                    color: AppColors.buttoncolor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: 
                 const Counter(),
                 ),
              ],
             ),
             const SizedBox(height: 15,),
             const Text('Description',
             style: TextStyle(
              color: Color.fromARGB(255, 160, 113, 95),
              fontSize: 19,
              fontWeight: FontWeight.bold,
             ),
             ),
             const Text('Buy Italian Pizza Get one free !',
             style: TextStyle(
              fontWeight: FontWeight.w500,
             ),
             ),
             const SizedBox(height: 18,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  const Text('EGP 420',
                  style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                  ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.buttoncolor,
                    ),
                    child: const Text('ADD TO CART',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    ) ,
                  ),
               ],
             ),
             const SizedBox(height: 12,),
             Divider(
              thickness: 2.5,
              indent: 15,
              endIndent: 15,
              color: AppColors.bar,
             ),
             const SizedBox(height: 10,),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Review',
                       style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 160, 113, 95),
                       ),
                      ),
                      Text('Send Your Feedback Now'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 35, top: 5),
                  child: Icon(Icons.keyboard_arrow_up),
                ),
              ],
             ),
             const SizedBox(height: 28,),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text('Add a comment...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 186, 135, 115),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 25,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       CustomIcon(),
                       CustomIcon(),
                       CustomIcon(),
                       CustomIcon(),
                       CustomIcon(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 160, 113, 95),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {}, 
                      child: const Text('SEND',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                      ),
                  ),
                ],
              ),
            ],
            
          ),
        ),
        ),
    );
  }
}