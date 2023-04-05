import 'package:flutter/material.dart';
import 'package:shop_online_project/constants.dart';
import 'package:shop_online_project/models/Product.dart';
import 'package:shop_online_project/screens/details/helper.dart';

class Body2 extends StatelessWidget {
  final Product product;

  const Body2({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void handleClick() {
      showMyDialog(context, 'สำเร็จ', 'Order Success');
    }
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  /*color: Colors.grey,*/
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Expanded(
                    child: Image.asset(product.image, fit: BoxFit.contain),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  padding: EdgeInsets.only(
                      top: size.height * 0.10,
                      right: kDefaultPaddin,
                      left: kDefaultPaddin),
                  //height: 500.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: const TextStyle(color: kTextColor),
                                children: [

                                  TextSpan(text: "${product.title} \n", style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
                                  TextSpan(text: "฿ ${product.price} ", style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const  SizedBox(height: 15.0),
                      Row(
                        children: [
                          Text(product.description),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      const  CartCounter(),
                      const SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50.0,
                            child: Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                    minimumSize: const Size(400, 50)),
                                onPressed: handleClick,
                                child: Text("BUY NOW".toUpperCase(),
                                    style: const TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final isSelected;

  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            if (numOfItem > 1) {
              setState(() {
                numOfItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(numOfItem.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline5),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedButton({IconData? icon, Function()? press}) {
    return SizedBox(
      width: 52.0,
      height: 32.0,
      child: OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))),
        onPressed: press,
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
