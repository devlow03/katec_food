import 'package:flutter/material.dart';

class HistoryTransaction extends StatelessWidget {
  const HistoryTransaction({super.key});


  @override
  Widget build(BuildContext context) {
    // List<Map<String,dynamic>> items = [
    //   {
    //     "tit"
    //   }
    // ]
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      itemCount: 2,
      itemBuilder: (context,index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Tháng 06/2024",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 10,),
            listItem()

          ],
        );
      },
      separatorBuilder: (context,index)=>const SizedBox(height: 10,),
    );
  }

  Widget listItem(){
    return ListView.separated(
      shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context,index){
        return cardItem();
      },
      separatorBuilder: (context,index)=>const SizedBox(height: 10,),
    );
  }

  Widget cardItem(){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blueGrey.shade200),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow.shade100
              ),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.wallet,
                  color:Colors.orange,
                  size: 40,

                ),
              )),
          const SizedBox(width: 8,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Thanh toán học phí tháng 4",
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(height: 5,),
              Text("1.200.000đ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1
              ),),
              Text("08:59 - 26/03/2024",style: TextStyle(fontSize: 13),)
            ],
          ),
          Column(
            children: [
              Image.asset("assets/images/logo_vcb.webp",height: 50,width: 50),
              const Text("Thành công",style: TextStyle(color: Colors.green,fontSize: 13,fontWeight: FontWeight.bold),)
            ],
          )
        ],
      )
    );
  }
}




