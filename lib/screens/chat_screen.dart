import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ChatScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

         body:StreamBuilder<QuerySnapshot>(
          
           stream:FirebaseFirestore.instance.collection('chats/qniwp2j5UY60KfUg5dIa/messages')
            .snapshots() ,
             builder: (ctx,AsyncSnapshot snapshot){
               if(snapshot.connectionState== ConnectionState.waiting)
               return Center(child: CircularProgressIndicator(),);
               final documents=snapshot.data.docs;
                return  ListView.builder(
        itemCount: documents.length,
        itemBuilder: (ctx,index)=>
        Container(
         padding:EdgeInsets.all(8),
         child: Text(documents[index]['text']), 
        ),
        );
         },),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
              FirebaseFirestore.instance.collection('chats/qniwp2j5UY60KfUg5dIa/messages').add({
                    'text' : 'This is added by clicking the button'
              });
             })
           );
       
     
   
   
  }
}