import 'package:chat_list/chat_list.dart';
import 'package:flutter/material.dart';

class IChatList extends StatefulWidget {
  @override
  _IChatListState createState() => _IChatListState();
}

class _IChatListState extends State<IChatList> {
  final ScrollController _scrollController = ScrollController();
    TextEditingController _emailTextController = TextEditingController();

  final List <Message> _messageList = [
    Message(
        content: "Hi, Bill! This is the simplest example ever.",
        ownerType: OwnerType.sender,
        ownerName: "Higor Lapa"),
    Message(
        content: "Bill, we have to talk about business",
        fontSize: 12.0,
        ownerType: OwnerType.sender,
        ownerName: "Higor"),
    Message(
        content: "Wow, I like it. Tell me what I can do for you, pal.",
        ownerType: OwnerType.receiver,
        ownerName: "Bill Gates"),
    Message(
        content: "I'm just a copy",
        ownerType: OwnerType.sender,
        ownerName: "Higor"),
    Message(
        content: "Nice",
        ownerType: OwnerType.receiver,
        ownerName: "Bill Gates"),
    Message(
        content: "I'm just a copy",
        ownerType: OwnerType.sender,
        ownerName: "Higor"),
    Message(
        content: "Nice",
        ownerType: OwnerType.receiver,
        ownerName: "Bill Gates"),
    Message(
        content: "I'm just a copy",
        ownerType: OwnerType.receiver,
        ownerName: "Bill Gates"),
    Message(
        content: "Nice",
        ownerType: OwnerType.receiver,
        ownerName: "Bill Gates"),
    Message(
        content: "I'm just a copy",
        ownerType: OwnerType.sender,
        ownerName: "Higor"),
    Message(content: "Nice", ownerType: OwnerType.sender, ownerName: "Higor"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                appBar: AppBar(
            backgroundColor: Colors.brown,
            title: const Text('Messagerie',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.5)),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.maybePop(context),
            ),
          ),
        body: Center(
          child: SingleChildScrollView(
child: Column(
  children: [
    const Text('Discussion avec BAKO Maxime 18:00', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                 ChatList(
      children: _messageList,
      scrollController: _scrollController,
    ),
      SizedBox(
        height: 40,
      ),
              const TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.send, color: Colors.black,), 
                  hintText: 'Ecrivez votre message',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                ),
              ),
  ],
),
     ) ));
  }

  void _onNewMessage() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

}