import "package:flutter/material.dart";


  
class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(right: 5),
      child: Icon(Icons.star_border,
          color: Color.fromARGB(255, 160, 113, 95),
          size: 28,
          ),
    );
        
      
    
  }
}