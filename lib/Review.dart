import 'package:config/notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Models.dart' show CartItem;
import 'resdatabase.dart';

class MyCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(
        builder: (context, cart, child) {
          return FutureBuilder(
              future: BuzzDatabase.instance.getAllItems(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<CartItem>> snapshot) {
                if (snapshot.hasData) {
                  List<CartItem> cartItems = snapshot.data!;
                  return cartItems.isEmpty
                      ? const Center(
                    child: Text(
                        "Dexter Empty", style: TextStyle(fontSize: 25)
                    ),
                  )
                      : ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return _CartItem(cartItems[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                        height: 10,
                      ),
                      itemCount: cartItems.length);
                } else {
                  return Center(child: Text(
                      "Dexter Empty", style: TextStyle(fontSize: 25)));
                }
              });
        });
  }
}

class _CartItem extends StatelessWidget {
  final CartItem cartItem;

  const _CartItem(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          border: Border.all(color:Colors.redAccent)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Poder de Pelea:"+cartItem.Strength.toString()),
          Image.asset ('assets/blobs/Mew.png', width: 120, height: 120,), //Image.asset(cartItem.Image, width: 120, height: 120,),
          ElevatedButton(
            onPressed: () async {
              await BuzzDatabase.instance.delete(cartItem.id);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("To Lab"),
                  duration: Duration(seconds: 1),
                ),
              );
              Provider.of<CartNotifier>(context, listen: false).shouldRefresh();
            },
            child: Text("To Lab"),
          ),
          Text(cartItem.Name),
          Text(cartItem.Type),
          Text(cartItem.Attacks),
          Text(cartItem.Description),
        ],
      ),
    );
  }
}


