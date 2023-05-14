import 'package:chatapp/constants.dart';
import 'package:flutter/material.dart';

class TermsAgreements extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal:10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 20,),
                Text('Terms & Agreements',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round'),),
                Container(height: 20,),
                Text('This agreement is hereby entered into on this date which shall here in after be referred to as the Effective Date,Purpose: To agree on the terms and conditions surrounding the development of Product (hereinafter referred to as The Product) by [Developer]. (Hereinafter referred to as The Developer) for [Company name] (hereinafter referred to as The Company).The Company and The Developer hereby agree that: 1-1.	The Developer is currently in the process of developing the product. 2-2.	The Company agrees to fund the products development in order to facilitate its FDA approval.For the purpose of the agreement, these will be the definitions of the following terms: 1-1.	“Confidential information” refers to all information regarding The Product, including but not limited to improvements, technical details, trade secrets, research, manufacturing, designs, processes, marketing and other product-related information. Specific exclusions include information that is disclosed through court order or becomes public domain. 2-2.	“Product Improvements” will refer to all information, inventions, modifications or discoveries related to The Product.Product Development 1-1.	The Developer will put forth commercially reasonable efforts to perform the development of the program. 2-2.	The development will be performed in accordance with all applicable laws and regulations. 3-3.	The Company will provide a total funding amount of 25,000 to The Developer over a series of payments, which will be made within 14 days of receipt of the invoice. 4-4.	The Company will receive monthly project status reports from The Developer. 5-5.	Both parties will ensure that confidential information is not disclosed to any unauthorized third parties. Terms of Termination 1-1.	If mutually agreed upon premature termination of this agreement should occur, any funding not yet received by The Developer will be halted. 2-2.	This agreement will be terminated upon completion of the product development. 3-1.	This agreement will be terminated upon completion of the product development. The undersigned have read this agreement and agree to the terms therein.',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round'),),
                Container(height: 20,),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('back to login page',style: TextStyle(color: Colors.white,fontSize: 28,fontFamily: 'Varela Round'),)),
                Container(height: 20,),
              ],
            ),
          ),
        ],
      ),
    ) ;
  }
}
